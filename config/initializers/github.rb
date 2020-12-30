Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['f44e7d46afec15896c18'], ENV['01094476143a2604ea4404b3f247b079be271871'], scope: "user,repo"
end