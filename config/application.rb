
require_relative 'boot'

require 'rails/all'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FreeImageApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    
    Unsplash.configure do |config|
      config.application_access_key = Rails.application.credentials.unsplash[:access_key]
      config.application_secret = Rails.application.credentials.unsplash[:secret]
      config.application_redirect_uri = Rails.application.credentials.unsplash[:redirect_uri]
      config.utm_source = Rails.application.credentials.unsplash[:utm_source]
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
