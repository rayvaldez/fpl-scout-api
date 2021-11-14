Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :players, only: [:index, :show] do
        resources :comments
        resources :replies
      end
      resources :comments
    end
  end

end
