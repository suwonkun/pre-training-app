Rails.application.routes.draw do
  get 'posts/index'
  post 'posts/create' => 'posts#create'
  root 'topics#index'
  get '/topics/:id' => 'topics#show', as: :topics_show
  post 'topics/create' => 'topics#create'
  delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete
end
