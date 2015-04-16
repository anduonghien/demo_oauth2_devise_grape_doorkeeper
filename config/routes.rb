Rails.application.routes.draw do
 root to: "home#index"
 use_doorkeeper
 mount RootV1 => '/'
 devise_for :users
end
