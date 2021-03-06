# == Schema Information
#
# Table name: leads_bs
#
#  id         :integer          not null, primary key
#  Address1   :string(255)
#  Address2   :string(255)
#  Address3   :string(255)
#  Address4   :string(255)
#  FirstName  :string(255)
#  HomePhone  :string(255)
#  LastName   :string(255)
#  Postcode   :string(255)
#  Price      :string(255)
#  Title      :string(255)
#  Address5   :string(255)
#  Address6   :string(255)
#  longitude  :float
#  latitude   :float
#  gmap       :boolean
#  Distance   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gmaps      :boolean
#

class LeadsB < ActiveRecord::Base
  attr_accessible :Distance, :Price, :latitude, :longitude, :Address1, :Address2, :Address3, :Address4, :Address5, :Address6, :FirstName, :HomePhone, :LastName, :Postcode, :Price, :Title
  geocoded_by :Postcode   
  after_validation :geocode
  acts_as_gmappable :process_geocoding => false 

 

def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    LeadsB.create! row.to_hash
  end
end



end

