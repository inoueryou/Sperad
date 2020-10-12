Rails.application.routes.draw do

	# influencer
		devise_for :influencers, :controllers => {
			:sessions => 'influencers/sessions',
			:registrations => 'influencers/registrations',
			:passwords => 'influencers/passwords'
		}

		scope module: :influencer do
			resources :influencers,only: [:show, :edit, :update] do
				member do
					get 'quit', to: 'influencers#quit'
					patch 'out', to: 'influencers#out'
				end
			end
		end

		namespace :influencer do
			resources :owners,only: [:index, :show]
			resources :genres,only: [:index, :create, :update, :edit]
			resources :messages,only: [:index, :show, :create]
			get 'top' => 'homes#top'
		end

	# owner
		devise_for :owners, :controllers => {
			:sessions => 'owners/sessions',
			:registrations => 'owners/registrations',
			:passwords => 'owners/passwords'
		}

		scope module: :owner do
			resources :owners,only: [:show, :edit, :update] do
				member do
					get 'quit', to: 'owners#quit'
					patch 'out', to: 'owners#out'
				end
			end
		end

		namespace :owner do
			resources :influencers,only: [:index, :show]
			resources :favorites,only: [:index, :create, :destroy]
			resources :messages,only: [:index, :show, :create]
			get 'top' => 'homes#top'
		end

	# about
		get 'about/top' => 'abouts#top'

end
