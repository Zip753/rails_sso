RailsSso.configure do |config|
  # include RailsSso::Helpers to ActionController::Base
  config.magic_enabled = true
  # url of entity provider
  config.provider_url = 'https://example.com'
  # name of oauth2 provider
  config.provider_name = 'example'
  # oauth keys for omniauth-example
  config.provider_key = ENV['PROVIDER_KEY']
  config.provider_secret = ENV['PROVIDER_SECRET']
  # extra arguments for oauth2 provider
  config.provider_extra_args = []
  # path for fetching user data
  config.provider_profile_path = '/api/v1/profile'
  # set if you support single sign out
  config.provider_sign_out_path = '/api/v1/session'
  # enable cache (will use Rails.cache store)
  config.use_cache = Rails.application.config.action_controller.perform_caching
end
