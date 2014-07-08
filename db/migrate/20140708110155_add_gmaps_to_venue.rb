class AddGmapsToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :gmaps, :string
  end
end
