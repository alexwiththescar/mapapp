class MapController < ApplicationController
  def show

@leads = LeadsA.all
@hash = []
@hashA = []
@hashB = []

@hashA = Venue.all.to_gmaps4rails do |lead, marker|
   lead.latitude
   lead.longitude
   marker.infowindow lead.name
   
end

@hashB = LeadsA.all.to_gmaps4rails do |lead, marker|
   lead.latitude
   lead.longitude
   marker.infowindow lead.LastName
   marker.picture({
   "picture" => "../assets/map_green.png",
   "width" =>  '10',        
   "height" => '10'
  })
end

@hashC = LeadsB.all.to_gmaps4rails do |lead, marker|
   lead.latitude
   lead.longitude
   marker.infowindow lead.LastName
   marker.picture({
   "picture" => "../assets/map_blur.png",
   "width" =>  '10',        
   "height" => '10'
  })
end

@map = @hashA + @hashB + @hashC
### for some reason, when adding the two arrays, to_gmaps4rails seems to make a string, so we 
### need to remove the array brackets after we concat the string. Hacky way, but it works!
@map.gsub! "][", ","
## We now have an array of hashes @hashC! Yay!


  end 
end
