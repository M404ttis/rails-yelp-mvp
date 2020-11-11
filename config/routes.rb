Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :show, :create ] do 
    # "/restaurants/:restaurant_id/" will be put in front of the following
    resources :reviews, only: [:new, :create ]
    # we'll need the resto's ID!!! in th eparams - this is why
  end
end
