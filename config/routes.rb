Rails.application.routes.draw do
  root 'tries#index'
  resources :tries
  get :increment_async_try, to: 'tries#increment_async_try'
end
