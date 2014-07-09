class LeadsB < ActiveRecord::Base
  attr_accessible :Distance, :Price, :latitude, :longitude, :Address1, :Address2, :Address3, :Address4, :Address5, :Address6, :FirstName, :HomePhone, :LastName, :Postcode, :Price, :Title
  geocoded_by :Postcode   
  after_validation :geocode
  acts_as_gmappable 

  def gmaps4rails_address 
      	postcode
     	end

def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    LeadsB.create! row.to_hash
  end
end



end

