class AddTemplateIdToElysiumSites < ActiveRecord::Migration
  def change
    add_column :elysium_sites, :template_id, :integer
  end
end

