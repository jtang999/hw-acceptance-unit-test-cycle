Rottenpotatoes::Application.routes.draw do
  get 'find/:id', to: 'movies#find', as: 'find_director'
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
