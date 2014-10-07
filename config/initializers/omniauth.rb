OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end


# provider :twitter, 'qIiYQYsdd5gGLSIEQKkeN5Z9R', 'Avy1oU36b64PUW6t0ZJeKjZD1lxr2M7cllFWRxToj5afewCfdt'
