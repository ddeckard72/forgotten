json.locations @locations do |location|
  json.location  location.location
  json.country location.country
  json.city  location.city
  json.state location.state
  json.zipcode  location.zipcode
  json.preview_image location.preview_image
end