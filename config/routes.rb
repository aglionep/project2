Rails.application.routes.draw do

  resources :fields


  # get 'fields/' 
  # get 'fields/new'
  # post 'fields/create'
  # get 'fields/edit'
  # patch 'fields/update'
  # get 'fields/:id'
  # delete 'fields/destroy'



#  fields GET    /fields(.:format)          fields#index
#            POST   /fields(.:format)          fields#create
#  new_field GET    /fields/new(.:format)      fields#new
# edit_field GET    /fields/:id/edit(.:format) fields#edit
#      field GET    /fields/:id(.:format)      fields#show
#            PATCH  /fields/:id(.:format)      fields#update
#            PUT    /fields/:id(.:format)      fields#update
#            DELETE /fields/:id(.:format)      fields#destroy






  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

 
end
