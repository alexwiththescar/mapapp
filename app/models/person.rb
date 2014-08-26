class Person < ActiveRecord::Base
  attr_accessible :count, :postcode

def self.import(file)
	Thread.new do
  CSV.foreach(file.path, headers: true) do |row|
    Person.create! row.to_hash
  end
end
end

end
