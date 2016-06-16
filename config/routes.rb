Rails.application.routes.draw do

  devise_for :users
  resources :posts do
    resources :likes
  end

   root to: "posts#index"
   get 'user_posts/:user_id' => 'posts#user', as: :user_posts
end
