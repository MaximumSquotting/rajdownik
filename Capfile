# frozen_string_literal: true

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rbenv'
set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, "2.3.1"
set :rbenv_path, "/home/deploy/.rbenv"
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value
Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }
