Rails.application.routes.draw do
  get 'resumes/show'
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  get    'signup'  => 'users#new'
  post   'signup'  => 'users#create'

  get   'resume/:id'=> 'resumes#show'

  resources :profiles , only: [:update]
  resources :educations , only: [:new]
  resources :experiences , only: [:new] do
    resources :projects , only: [:new]
  end
end
