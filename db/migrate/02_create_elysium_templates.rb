class CreateElysiumTemplates < ActiveRecord::Migration
  def change
    create_table :elysium_templates do |t|
      t.integer :site_id, null: false
      t.string :name, null: false
      t.text :description
      t.string :screenshot
      t.text :javascript
      t.text :stylesheet
    end
  end
end

