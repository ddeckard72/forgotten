Rails.application.routes.draw do
#location
post "/location", to: "location#create"
patch "/location/:id", to: "location#edit"
delete "/location/:id", to: "location#delete"
get "/location", to: "location#index"
#image

#content

#article


end
