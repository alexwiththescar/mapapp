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
   
end
leadsb = LeadsA.find(:all, :conditions => [ "price > ? AND count > ?", 300000, 1])
@hashB = leadsb.to_gmaps4rails do |lead, marker|
   lead.latitude
   lead.longitude
   marker.infowindow lead.Postcode
    marker.picture({
    "picture" => "../assets/map_green.png",
    "width" =>  '10',        
    "height" => '10'
   })
end

leadsa = LeadsA.find(:all, :conditions => [ "price < ? AND price < ?", 200000, 249999])
@hashC = leadsa.to_gmaps4rails do |lead, marker|
   lead.latitude
   lead.longitude
   marker.infowindow lead.Postcode
    marker.picture({
    "picture" => "../assets/map_blur.png",
    "width" =>  '10',        
    "height" => '10'
   })
end

leadsa = LeadsA.find(:all, :conditions => [ "price < ? AND price < ?", 250000, 299999])
@hashD = leadsa.to_gmaps4rails do |lead, marker|
   lead.latitude
   lead.longitude
   marker.infowindow lead.Postcode
    marker.picture({
    "picture" => "../assets/map_orange.png",
    "width" =>  '10',        
    "height" => '10'
   })
end

@map = @hashB #+ @hashC + @hashD
### for some reason, when adding the two arrays, to_gmaps4rails seems to make a string, so we 
### need to remove the array brackets after we concat the string. Hacky way, but it works!
@map.gsub! "][", ","
@map.gsub! ",,", ","
## We now have an array of hashes @map! Yay!


  end 
end
