Rails.application.routes.draw do
  root 'topics#index'
  get 'topics/show'
  post 'topics/create' => 'topics#create'
  delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete
end
