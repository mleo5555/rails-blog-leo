Rails.application.routes.draw do

  root 'posts#index'

  resources :posts do
    resources :comments, :only => [:update, :destroy, :post]
  end

  post 'posts/:post_id/comments/:id' => 'comments#create'
  get 'get_login'   => 'users#get_login'
  post 'get_login'   => 'users#login'
  get 'logout'   => 'users#logout'

end
