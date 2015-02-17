# SSO client Rails Engine

[![Circle CI](https://circleci.com/gh/monterail/rails_sso/tree/master.svg?style=svg&circle-token=237c44548fb2c2597bcd0bc7b1dd99c81329e574)](https://circleci.com/gh/monterail/rails_sso/tree/master)
[![Dependency Status](https://gemnasium.com/monterail/rails_sso.svg)](https://gemnasium.com/monterail/rails_sso)
[![Gem Version](https://badge.fury.io/rb/rails_sso.svg)](http://badge.fury.io/rb/rails_sso)

## About

*SOON*

## Installation

Add engine and [omniauth](https://github.com/intridea/omniauth-oauth2) provider gems to your project:

```ruby
# Gemfile

gem 'omniauth-example'
gem 'rails_sso'
```

Configure it:

```ruby
# conifg/initializers/sso.rb

RailsSso.configure do |config|
  # name of oauth2 provider
  config.provider_name = 'example'
  # oauth keys for omniauth-example
  config.provider_key = ENV['PROVIDER_KEY']
  config.provider_secret = ENV['PROVIDER_SECRET']
  # path for fetching user data
  config.provider_profile_path = '/api/v1/profile'
  # set if you support single sign out
  config.provider_sign_out_path = '/api/v1/session'
  # enable cache (will use Rails.cache store)
  config.use_cache = Rails.application.config.action_controller.perform_caching
end
```

And mount it:

```ruby
# config/routes.rb

Rails.application.routes.draw do
  mount RailsSso::Engine => '/sso', as: 'sso'
end
```

## Usage

Available helpers for controllers and views:

* `current_user_data`
* `user_signed_in?`

Available filters and helpers for controllers:

* `authenticate_user!`
* `save_access_token!`
* `invalidate_access_token!`

Available helpers for views:

* `sso.sign_in_path`
* `sso.sign_out_path`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
