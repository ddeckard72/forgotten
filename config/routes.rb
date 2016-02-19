Rails.application.routes.draw do
#location
post "/location", to: "location#create"
patch "/location/:id", to: "location#edit"
delete "/location/:id", to: "location#delete"
get "/location", to: "location#index"
get "/location", to: "location#locations"
#image
post "/image", to: "image#add"
get "/image/search", to: "image#search"
delete "/image", to: "image#delete"
get "/image", to: "image#imagelist"
#content

#article


end
