Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, 
           Rails.application.credentials.github[:app_id],
           Rails.application.credentials.github[:app_secret],
           scope: 'user,public_repo'
end
