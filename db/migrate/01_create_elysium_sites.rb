class CreateElysiumSites < ActiveRecord::Migration
  def change
    create_table :elysium_sites do |t|
      t.string :title, null: false
      t.string :domain, null: false
      t.string :meta_keywords
      t.string :meta_description
      t.string :meta_author
    end

    add_index :elysium_sites, :domain
  end
end

