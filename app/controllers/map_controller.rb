class MapController < ApplicationController
  def show

@leads = LeadsA.all
@hash = LeadsA.all.to_gmaps4rails #do |lead, marker|
#    lead.latitude
#    lead.longitude
#    marker.infowindow lead.Postcode
#    marker.picture({
#    "picture" => "../assets/map_green.png",
#    "width" =>  '10',        
#    "height" => '10'
#    })
# end

  


  end 
end
