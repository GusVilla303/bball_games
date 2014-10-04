Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['qIiYQYsdd5gGLSIEQKkeN5Z9R'], ENV['Avy1oU36b64PUW6t0ZJeKjZD1lxr2M7cllFWRxToj5afewCfdt']
end
