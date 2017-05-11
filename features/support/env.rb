require 'rubygems'
require 'httparty'
require 'pry'
require 'rspec'


# Set Environment (default is prod)
ENV_LOCALE = ENV["ENVIRONMENT"] || "prod"
DEBUG = ENV['DEBUG'] || false

# Load config files
ENV_FILE = (YAML.load_file('./config/environment.yml'))

# Define configurations based on environment
ENVIRONMENT = ENV_FILE[ENV_LOCALE]

