class CreateLeadsBs < ActiveRecord::Migration
  def change
    create_table :leads_bs do |t|
      t.string :Address1
      t.string :Address2
      t.string :Address3
      t.string :Address4
      t.string :FirstName
      t.string :HomePhone
      t.string :LastName
      t.string :Postcode
      t.string :Price
      t.string :Title
      t.string :Address5
      t.string :Address6
      t.float :longitude
      t.float :latitude
      t.boolean :gmap
      t.float :latitude
      t.float :longitude
      t.string :Distance
      t.string :Price

      t.timestamps
    end
  end
end
