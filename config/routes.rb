Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'convert', to: 'services#convert'
    end
  end
end
