Rails.application.routes.draw do

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/'
        
#  mount Spree::Core::Engine, :at => '/'

  Spree::Core::Engine.routes.draw do
    namespace :api do
      namespace :ams do
        resource :config, controller: :app_configuration, only: :show
        resource :home, controller: :home, only: :show
        resources :user_passwords, only: [:update, :create]
        resources :states, only: :index

        get '/search/suggestions', to: 'searches#suggestions'
        get '/search', to: 'searches#index'

        namespace :product do
          resources :reviews, only: [:index, :create, :destroy], param: :review_id
        end

        namespace :user do
          resources :profiles, only: :update, param: :token
          resources :confirmations, only: :create
          resources :addresses, only: [:index, :create, :update, :destroy], param: :address_id
        end

        get "/orders/current", to: "orders#current", as: "current_order"
        get "/orders/mine", to: "orders#mine", as: "my_orders"
        get "config/states", to: "app_configuration#country_details"

        scope '/users' do
          resources :credit_cards, only: [:index, :create, :destroy]
        end

        concern :order_routes do
          resources :line_items
          resources :payments, only: [:new, :create, :index]
        end

        resources :orders, concerns: :order_routes

        resources :checkouts, only: [:update], concerns: :order_routes do
          member do
            put :back
          end
        end

        post '/users/sign_in', to: 'users#token'
        patch '/password/change', to: 'user_passwords#update'
        post '/password/reset', to: 'user_passwords#create'

        # device urls
        scope '/devices' do
          post   'register',   to: 'devices#register'
          patch  'unlink',     to: 'devices#unlink'
          delete 'deregister', to: 'devices#deregister'
        end

        resources :wishlists do
          collection do
            get :default
          end
        end
        resources :wished_products, only: [:create, :update, :destroy]
      end
    end

    namespace :admin do
      resources :banners
      resources :product_property_types
      resources :filters
    end
  end

end
