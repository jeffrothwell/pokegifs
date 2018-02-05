Rails.application.routes.draw do

  get 'pokemon/:id' => "pokemon#show"

end
