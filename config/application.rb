# frozen_string_literal: true

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
  config.application_access_key = "4b9f43f92d64598cac580a444171cefd9825f70bc4105ef7b4c33a044b14c125"
  config.application_secret = "236972ba8efd2cdbbdfc6d87980c9467850735dfa0ff5db5f722c4fe2c90fe51"
  config.application_redirect_uri = "urn:ietf:wg:oauth:2.0:oob"
  config.utm_source = "alices_terrific_client_app"
end


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
