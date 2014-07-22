class AddVenueToLeadsA < ActiveRecord::Migration
  def change
    add_column :leads_as, :venue, :string
  end
end
