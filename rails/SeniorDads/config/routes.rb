Rails.application.routes.draw do
  resources :demos

  resources :galleries

  resources :pictures

  resources :site_files

  resources :site_file_types

  resources :pictures

  get 'pictures/default'

  resources :dudes

#  get 'dudes/default'
#  get 'dudes/faq'
#  get 'demos/default'
#  get 'demos/emu'
#  get 'demos/pc'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # SENIOR DADS MAIN PAGE
  root 'pages#root'
  get '/default.html', to: 'pages#root'

  # CREW section: =====================================================================================================

  # Main page
  get '/crew/', to: 'dudes#default'
  get '/crew/default.html', to: 'dudes#default'
  get '/crew/dudes.html', to: 'dudes#default'

  # FAQ
  get '/crew/faq.html', to: 'dudes#faq'

  # DEMOS section: ====================================================================================================

  get '/demos/default.html', to: 'demos#default'    # Main page
  get '/demos', to: 'demos#default'
  get '/demos/pc.html', to: 'demos#emu'             # "PC"/compatibility page
  get '/demos/emu.html', to: 'demos#emu'

  # Now the demos...
  get '/demos/atuck.html', to: 'demos#atuck'        # "Anal tuck"
  get '/demos/colonic.html', to: 'demos#colonic'    # "Colonic Irrigation"
  get '/demos/ladmds2.html', to: 'demos#ladmds2'    # "L'Aube du Matin Du Soir II (remix)"
  get '/demos/airdirt.html', to: 'demos#airdirt'    # "The Air Dirt Demo"
  get '/demos/floormat.html', to: 'demos#floormat'  # "The ST Floormat Demo"
  get '/demos/teckno.html', to: 'demos#teckno'      # "The 'Anti Teckno' Teckno Demo"
  get '/demos/xmas97.html', to: 'demos#xmas97'      # "Xmas Card '97"
  get '/demos/dadplazz.html', to: 'demos#dadplazz'  # "DadPlazz!"
  get '/demos/mono.html', to: 'demos#mono'          # "Monomental"
  get '/demos/fake.html', to: 'demos#fake'          # "Ultimate Fake Demo"

  # GFX section =======================================================================================================

  resources :pictures
  get '/gfx/default.html', to: 'pictures#default'

  # DADMIN section ====================================================================================================

  # Basic site file types...
  resources :site_file_types

  # ===================================================================================================================

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
