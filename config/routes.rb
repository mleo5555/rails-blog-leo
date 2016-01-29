Rails.application.routes.draw do

  root 'posts#index'

  resources :posts do
    resources :comments, :only => [:update, :destroy, :post]
  end

  post 'posts/:post_id/comments/:id' => 'comments#create'

end
