Blog::Application.routes.draw do
  get "/" => 'home#index'

  get "/posts" => 'posts#index'
  get "/posts/:id" => 'posts#show', as: :post
end
