Rails.application.routes.draw do
  root 'topic#index'
  get '/topics/:id' => 'topics#show', as: :topics_show
  post 'topics/create' => 'topics'
end
