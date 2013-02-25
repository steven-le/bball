class Court < ActiveRecord::Base
   attr_accessible :name, :description, :lat, :lon, :street, :city_state, :pic_link
   has_many :comments
end
