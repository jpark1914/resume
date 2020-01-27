Rails.application.routes.draw do
	
	root 'resumes#index'

	 get 'resumes/pdf/:id', to: 'resumes#pdf'
	resources :resumes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
