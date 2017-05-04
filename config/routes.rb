Rails.application.routes.draw do
  resources :divisions
  resources :reject_emails
  resources :block_emails
  resources :unblock_emails
  resources :confirmation_emails
  resources :welcome_emails
  resources :museum_owners
  devise_for :admins
  resources :subscriptions
  resources :backgrounds
  resources :news
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'emuseum#home'
  get 'emuseum/home'
  get 'emuseum/index'
  get 'emuseum/news' => 'news#news'
  get 'emuseum/background' => 'backgrounds#background' 

  get 'admins/block_reason_statistics' => 'emuseum#block_reason_statistics'
  get 'admins/object_statistics' => 'emuseum#object_statistics'
  get 'admins/visitor_statistics' => 'emuseum#visitor_statistics'
  get 'admins/mu_sub_statistics' => 'emuseum#mo_statistics'
  get 'admins/confirmation' => 'subscriptions#confirmation'
  post 'subscriptions/confirm'
  post 'subscriptions/reject'
  post 'subscriptions/confirmagain'
  
  get 'userdetail' => 'subscriptions#userdetail'

  post 'museum_owners/block'
  post 'museum_owners/unblock'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
