class Person < ActiveRecord::Base
  attr_accessible :count, :postcode

def self.import(file)
	
  CSV.foreach(file.path, headers: true) do |row|
    Person.create! row.to_hash

end
end

end