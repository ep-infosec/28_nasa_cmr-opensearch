EchoOpensearch::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  config.application_url = 'http://localhost:3000'
  config.relative_url_root = '/opensearch'
  config.graphql_endpoint = ENV['GRAPHQL_ENDPOINT']
  config.cache_store = :redis_cache_store, { url: "redis://#{ENV['REDIS_URL']}:#{ENV['REDIS_PORT']}" }

  # Logging
  Rails.logger = Logger.new("#{Rails.root}/log/#{Rails.env}.log")
  Rails.logger.formatter = Logger::Formatter.new

  puts 'This is a dev deployment'
end
