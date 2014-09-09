Screener::Application.routes.draw do
  devise_for :users
  root 'pages#landing'  

  resources :submissions, except: [:edit, :update, :show]

  scope 'expert' do
  	get '/' => 'expert#index', as: 'expert'
  	get '/search' => 'expert#search', as: 'search'
  	scope 'submissions' do
  		put '/:id' => 'expert#update', as: 'update_doctor_result'
  		get '/:id' => 'expert#show', as: 'expert_show'
  	end
  end
end
