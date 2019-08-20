Rails.application.routes.draw do

  root to: "robertos#barros"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # CRUD

  # Create

  get "/pets/new", to: "pets#new"

  post "/pets", to: "pets#create"

  # Read

  get "/pets", to: "pets#index"

  get "/pets/:id", to: "pets#show", as: "pet"

  # Update

  get "/pets/:id/edit", to: "pets#edit", as: "edit_pet"

  patch "/pets/:id", to: "pets#update"

  # Delete

  delete "/pets/:id", to: "pets#destroy"

  # OBS: Não decorem essas 7 rotas! Lógico, devemos saber o que cada uma faz,
  # mas não é necessário decorar todos os path no controller. Muito raramente
  # faremos rotas "na mão". O jeito mais certo de fazer o mesmo seria apenas usando
  # resources :pets

end
