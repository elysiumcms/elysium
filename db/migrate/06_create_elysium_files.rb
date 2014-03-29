class CreateElysiumFiles < ActiveRecord::Migration
  def change
    create_table :elysium_files do |t|
      t.integer :template_id, null: false
      t.string :name, null: false
      t.string :file, null: false
      t.string :content_type, null: false
      t.integer :width
      t.integer :height
      t.integer :size, null: false
    end
  end
end

