class MapController < ApplicationController
  def show

@leads = LeadsA.all
@hash = []
@hashA = []
@hashB = []
@hashA = Venue.all.to_gmaps4rails do |lead, marker|
   lead.latitude
   lead.longitude
   marker.infowindow lead.postcode
   #marker.picture({
   #{}"picture" => "../assets/map_green.png",
   #{}"width" =>  '10',        
   #{}"height" => '10'
   #})
end

@hashB = LeadsA.all.to_gmaps4rails do |lead, marker|
   lead.latitude
   lead.longitude
   marker.infowindow lead.Postcode
   marker.picture({
   "picture" => "../assets/map_green.png",
   "width" =>  '10',        
   "height" => '10'
   })
end

@hashC = @hashA + @hashB

@hashC["]["] = ","



  end 
end
