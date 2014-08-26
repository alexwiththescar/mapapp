p = Person.all

@count = {}
p.each do |p|

@count["#{p.postcode}"] = p.count

end

l = LeadsA.all

l.each do |l|
l.count  = @count[l.Postcode]
end