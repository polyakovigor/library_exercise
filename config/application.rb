require_relative 'boot'

# require 'rails/all'

require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'sprockets/railtie'
require 'rails/test_unit/railtie'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LibraryExercise
  class Application < Rails::Application
    config.load_defaults 5.1

    config.mongoid.logger = Logger.new($stdout, :warn)
    config.mongoid.preload_models = false
    config.generators do |g|
      g.orm :mongoid
    end

  end
end
