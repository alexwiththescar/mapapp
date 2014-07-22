# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  postcode   :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  latitude   :float
#  longitude  :float
#  gmaps      :string(255)
#

class Venue < ActiveRecord::Base
  attr_accessible :name, :postcode, :latitude, :longitude
  geocoded_by :postcode   
  after_validation :geocode
  acts_as_gmappable 

  def gmaps4rails_address 
	postcode
	end

end
