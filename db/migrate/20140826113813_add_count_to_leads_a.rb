class AddCountToLeadsA < ActiveRecord::Migration
  def change
    add_column :leads_as, :count, :integer
  end
end
