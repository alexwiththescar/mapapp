class LeadsA < ActiveRecord::Base
  attr_accessible :Distance, :Price, :latitude, :longitude, :Address1, :Address2, :Address3, :Address4, :Address5, :Address6, :FirstName, :HomePhone, :LastName, :Postcode, :Price, :Title
  geocoded_by :Postcode   
  after_validation :geocode
  acts_as_gmappable :process_geocoding => false

def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    LeadsA.create! row.to_hash
  end
end



end

