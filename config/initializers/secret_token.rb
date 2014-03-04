# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Chef::Application.config.secret_key_base = '7bce31b379bdb0fbba155c168e4b41c5e0663be8ed4c335078ee88f19795ae82e577bdf0b4e5b7f769780ccad2798c18b50c6872ff32854563440b3ed8730349'
