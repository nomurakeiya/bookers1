Rails.application.routes.draw do
  root to: 'books#top'


  get 'books' => 'books#index'
  get 'books/:id/edit' => 'books#edit', as: 'book_edit'
  get 'books/index' => 'books#new'
  get 'books/:id' => 'books#show', as: 'book_show'
  post 'books' => 'books#create'
  patch 'books/:id' => 'books#update', as: 'book_update'
  delete 'books/:id' => 'books#destroy', as: 'book_destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
