class Location < ActiveRecord::Base
	has_many :articles
	has_many :images
	has_many :contents
end
