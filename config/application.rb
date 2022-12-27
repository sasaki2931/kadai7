require_relative "boot"

require "rails/all"

config.time_zone = 'Tokyo'
config.active_record.default_timezone = :local



Bundler.require(*Rails.groups)

module Kadai7
  class Application < Rails::Application
    
    config.load_defaults 6.1
  end 
end
