class AddStuffToLeadsA < ActiveRecord::Migration
  def change
    add_column :leads_as, :Distance, :string
  end
end
