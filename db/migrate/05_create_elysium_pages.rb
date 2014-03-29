class CreateElysiumPages < ActiveRecord::Migration
  def change
    create_table :elysium_pages do |t|
      t.integer :template_id, null: false
      t.integer :layout_id
      t.string :name, null: false
      t.string :path, null: false
      t.boolean :system, default: false
      t.boolean :publish, default: false
      t.text :content, null: false
      t.text :javascript
      t.text :stylesheet
    end
  end
end

