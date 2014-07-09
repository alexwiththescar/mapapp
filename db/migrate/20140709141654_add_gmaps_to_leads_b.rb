class AddGmapsToLeadsB < ActiveRecord::Migration
  def change
    add_column :leads_bs, :gmaps, :boolean
  end
end
