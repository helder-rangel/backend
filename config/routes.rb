require 'api_constraints'

Rails.application.routes.draw do
  
  
  namespace :api, defaults: { format: :json } do
    
    mount_devise_token_auth_for 'User', at: 'auth'
    

    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: true) do
                          resources :user
                          resources :entregas
                          resources :pedidos
                          resources :carrinho_compras
                          resources :enderecos
                          resources :produtos
                                  
      end
    

    scope module: :v2,
          constraints: ApiConstraints.new(version: 2, default: false) do
                    end
  end
end