Rails.application.routes.draw do
  # 
  # resources :fields

  root 'fields#index'

  get 'fields/' => "fields#index"
  get 'fields/new' => "fields#new", as: :new_field
  post 'fields/' => "fields#create"
  get 'fields/:id' => "fields#show", as: :field
  get 'fields/:id/edit' => "fields#edit", as: :edit_field
  patch 'fields/:id' => "fields#update"
  delete 'fields/:id' => "fields#destroy"



#  fields GET    /fields(.:format)          fields#index
#            POST   /fields(.:format)          fields#create
#  new_field GET    /fields/new(.:format)      fields#new
# edit_field GET    /fields/:id/edit(.:format) fields#edit
#      field GET    /fields/:id(.:format)      fields#show
#            PATCH  /fields/:id(.:format)      fields#update
#            PUT    /fields/:id(.:format)      fields#update
#            DELETE /fields/:id(.:format)      fields#destroy



  # get 'users/index'

  # get 'users/show'

  # get 'users/new'

  # get 'users/create'

  # get 'users/edit'

  # get 'users/update'

  # get 'users/destroy'

  # get 'reviews/index'

  # get 'reviews/show'

  # get 'reviews/new'

  # get 'reviews/create'

  # get 'reviews/edit'

  # get 'reviews/update'

  # get 'reviews/destroy'


  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

 
end
