Rails.application.routes.draw do
  resources :backgrounds
  resources :news
  mount Ckeditor::Engine => '/ckeditor'
  root 'emuseum#home'
  get 'emuseum/home'

  get 'emuseum/news' => 'news#news'
  get 'emuseum/background' => 'backgrounds#background' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
