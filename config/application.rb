require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module LocalStudio
  class Application < Rails::Application
    config.load_defaults 8.0
    config.autoload_lib(ignore: %w[assets tasks])
    config.time_zone = "Eastern Time (US & Canada)"
    config.eager_load = false
    config.secret_key_base = ENV.fetch("SECRET_KEY_BASE", "local-studio-development-secret-key-base-please-change")
  end
end
