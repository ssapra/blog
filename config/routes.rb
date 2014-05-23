Blog::Application.routes.draw do
  get "/" => 'home#index'

  get "/posts/new" => 'posts#new'
  get "/posts/:id/edit" => 'posts#edit'
  get "/posts" => 'posts#index'
  get "/posts/:id" => 'posts#show', as: :post
  patch "/posts/:id" => 'posts#update'
  delete "/posts/:id" => 'posts#destroy'
  post "/posts" => 'posts#create'

end
