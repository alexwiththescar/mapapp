class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :postcode
      t.string :name

      t.timestamps
    end
  end
end
