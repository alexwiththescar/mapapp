class Venue < ActiveRecord::Base
  attr_accessible :name, :postcode, :latitude, :longitude
  geocoded_by :postcode   
  after_validation :geocode
  acts_as_gmappable 

  def gmaps4rails_address 
postcode
end

end
