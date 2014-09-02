Screener::Application.routes.draw do
  devise_for :users
  root 'pages#landing'  

  resources :submissions, except: [:edit, :update, :show]

  scope 'expert' do
  	get '/' => 'expert#index', as: 'expert'
  	scope 'submissions' do
  		put '/:id' => 'expert#update', as: 'update_doctor_result'
  	end
  end
end
