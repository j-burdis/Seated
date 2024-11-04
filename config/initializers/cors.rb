Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://www.seated.movie', 'http://localhost:3000' # Add your domain here
    resource '*', 
            headers: :any,
            methods: %i[get post put delete options],
            credentials: true
  end
end
