Rails.application.routes.draw do
	devise_for :users
	root 'users#index'
	post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
	post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
	resources :users, only: :show
end
