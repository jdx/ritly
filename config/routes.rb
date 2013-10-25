Ritly::Application.routes.draw do
  root to: 'home#index'
  post 'save_a_new_url' => 'websites#create'
  get ':hashcode' => 'websites#redirect'
end
