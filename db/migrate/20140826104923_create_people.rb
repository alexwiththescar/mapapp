class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :postcode
      t.integer :count

      t.timestamps
    end
  end
end
