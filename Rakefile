require 'standalone_migrations'
require 'pry'
require 'etc'
require 'socket'
require 'colorized_string'
require 'yaml'
require 'inquirer'
require 'io/console'

StandaloneMigrations::Tasks.load_tasks

namespace :environment do
  task :prepare do
    welcome_msg
    database_config if Ask.confirm ColorizedString[" Would you like to configure the settings? "].colorize(:yellow), default: true
    continue = Ask.confirm ColorizedString[" Would you like to continue to create databases? "].colorize(:yellow), default: true
    databases = Ask.checkbox ColorizedString[" Please select the database type"].colorize(:yellow), ["redshift","greenplum"], default: [false, false]
      Rake::Task["db:setup_redshift"].execute(environments) if environments.to_a.any? {|value| value == true }  # rescue puts "sddsds"
      terminal_msg
    environments = Ask.checkbox ColorizedString[" Please select the list of environments"].colorize(:yellow), ["Staging", "Production"], default: [true, true] if continue

    Rake::Task["db:setup_redshift"].execute(environments) if environments.to_a.any? {|value| value == true }  # rescue puts "sddsds"
    terminal_msg
  end


  def welcome_msg
    puts "\n-----------------------------------------------------------------------------------------------------------------------------\n\n"
    username = ColorizedString[Etc.getpwnam(Etc.getlogin).gecos.split(/,/).first].colorize(:green)
    puts " Welcome #{username}! You are using #{ColorizedString[Socket.gethostname.strip].colorize(:green)} for Schema Migration., \n\n"
  end

  def database_config
    puts " Please enter the following details to prepare the execution environment. Press #{ColorizedString["Ctrl C"].colorize(:red)} anytime to stop the execution.\n\n"
    config = YAML.load_file("db/config.yml")

    customer_name = Ask.input ColorizedString[" Please enter the Customer or Team Name [Mercy/InData]:   "].colorize(:yellow), default: "InData"
    config["staging"]["database"], config["production"]["database"], config["system"]["database"] = customer_name.downcase.gsub(/[^0-9A-Za-z]/, '') + "_staging", customer_name.downcase.gsub(/[^0-9A-Za-z]/, '') + "_production", customer_name.downcase.gsub(/[^0-9A-Za-z]/, '') + "_system"

    host = Ask.input ColorizedString[" Please enter Data Warehouse Endpoint / Host URL [localhost]:  "].colorize(:yellow), default: "localhost"
    config["staging"]["host"], config["production"]["host"], config["system"]["host"], = host, host, host

    root_db = Ask.input ColorizedString[" Please enter the root database name:  "].colorize(:yellow), default: "redshift"
    config["system"]["database"] = root_db

    port = Ask.input ColorizedString[" Please enter Database Port "].colorize(:yellow), default: 5439
    config["staging"]["port"], config["production"]["port"], config["system"]["port"] = port.to_i, port.to_i, port.to_i

    username = Ask.input ColorizedString[" Please enter Database Username "].colorize(:yellow), default: "admin"
    config["staging"]["username"], config["production"]["username"], config["system"]["username"] = username, username, username

    password = password_config
    config["staging"]["password"], config["production"]["password"], config["system"]["password"] = password, password, password

    File.open("db/config.yml", 'w') { |file| file.write(config.to_yaml)}

    print "\n Thank you for providing the credentials. We're validating your configurations. This might take few seconds ... "
    ActiveRecord::Base.establish_connection(config["system"])
    ActiveRecord::Base.connection
    print ColorizedString["Validated Connection \n\n"].colorize(:green)

  end

  def password_config
    print ColorizedString[" Please enter Database Password [****]:  "].colorize(:yellow)
    password = STDIN.noecho(&:gets).chomp
    puts "\n"
    password_config if password.blank?
    password
  end

  def validate_database

  end

  def terminal_msg
    puts "\n You can now execute the following: \n"
    puts "     #{ColorizedString["Step 01:"].colorize(:green)} Migrate schema on staging environment #{ColorizedString["RAILS_ENV=staging rake db:migrate"].colorize(:green)}"
    puts "     #{ColorizedString["Step 02:"].colorize(:green)} Migrate schema on production environment #{ColorizedString["RAILS_ENV=production rake db:migrate"].colorize(:green )} \n \n"
    puts " For any queries please contact #{ColorizedString["yash.panchal@innovaccer.com"].colorize(:blue)}"
    puts "\n-----------------------------------------------------------------------------------------------------------------------------\n"
  end
end

namespace :db do
  task :setup_redshift do |task, environments|
    staging, production = environments
    @staging, @production = environments
    config = YAML.load_file('db/config.yml')
    staging_config = config["staging"]
    production_config = config["production"]
    system_config = config["system"]
    puts " This might take few seconds ..."
    @development = ActiveRecord::Base.establish_connection(system_config)
    @development.connection.execute("create database #{staging_config["database"]}") if staging
    @development.connection.execute("create database #{production_config["database"]}") if production
    puts " Created Database for #{"staging" if staging}#{" and " if staging & production}#{"production" if production}: #{ColorizedString[staging_config["database"]].colorize(:green) if staging}#{" and " if staging & production}#{ColorizedString[production_config["database"]].colorize(:green) if production}"
  end
end

