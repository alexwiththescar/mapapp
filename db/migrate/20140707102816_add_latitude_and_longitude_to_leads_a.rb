class AddLatitudeAndLongitudeToLeadsA < ActiveRecord::Migration
  def change
    add_column :leads_as, :latitude, :float
    add_column :leads_as, :longitude, :float
  end
end
