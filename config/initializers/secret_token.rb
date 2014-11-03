# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4 
# requires secret_key_base or secret_token to be defined, otherwise an 
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
Wdi7RailsLabHnApi::Application.config.secret_token = 'cadc1bdf2ef0545a18fe3b060f65ca073c0cd7d0055fe010b6e9958821ffa56d7f18c12e1e4a26d43b7421146de06782103231bd2fa6d6ad5c1c9d3cf0fa2864'
