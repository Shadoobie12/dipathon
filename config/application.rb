require File.expand_path('../boot', __FILE__)
require 'rails/all'

+--  6 lines: if defined?(Bundler)----------------------------------------------------------------------------

module Gsnapweb
class Application < Rails::Application
 config.encoding = "utf-8"

 # Configure sensitive parameters which will be filtered from the log file.
 config.filter_parameters += [:password]

 # Enable escaping HTML in JSON.
 config.active_support.escape_html_entities_in_json = true
      config.active_record.whitelist_attributes = true

 # Enable the asset pipeline
 config.assets.enabled = true

 # Version of your assets, change this if you want to expire all your assets
 config.assets.version = '1.0'

 config.action_mailer.delivery_method = :smtp
 config.action_mailer.smtp_settings = {
          :address => 'mail.example.net',
          :port    => 26,
          :authentication => 'plain',
          :user_name => 'xxxxxx',
          :password => 'xxxxxx',
 }
config.action_mailer.raise_delivery_errors = true
config.action_mailer.perform_deliveries = true
config.action_mailer.default_charset = 'utf-8'