Rockr::Application.routes.draw do
  root :to => 'venues#index'
  resources :venues, :only => [:new, :create]
  resources :shows, :only => [:new, :create]
end
