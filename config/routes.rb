Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :dice_roll, only: [:show, :create]

  root to: 'dice_rolls#show'
end
