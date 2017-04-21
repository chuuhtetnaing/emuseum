Rails.application.routes.draw do
  root 'emuseum#home'
  get 'emuseum/home'

  get 'emuseum/background'

  get 'emuseum/news'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
