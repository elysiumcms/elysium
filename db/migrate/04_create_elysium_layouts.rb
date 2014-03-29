class CreateElysiumLayouts < ActiveRecord::Migration
  def change
    create_table :elysium_layouts do |t|
      t.integer :template_id, null: false
      t.string :name, null: false
      t.text :content, null: false
      t.text :javascript
      t.text :stylesheet
    end
  end
end

