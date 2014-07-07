class CreateLeadsAs < ActiveRecord::Migration
  def change
    create_table :leads_as do |t|
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
      t.boolean :gmaps

      t.timestamps
    end
  end
end
