Screener::Application.routes.draw do
  devise_for :users
  root 'pages#landing'  

  resources :submissions, except: [:edit, :update, :show] do
  end
end
