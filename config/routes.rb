Rails.application.routes.draw do
	get 'posts/top' => 'posts#top'
	get '/' => 'posts#top'
	resources :posts, :only => [:index, :show, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
