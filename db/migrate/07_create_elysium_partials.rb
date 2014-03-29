class CreateElysiumPartials < ActiveRecord::Migration
  def change
    create_table :elysium_partials do |t|
      t.integer :template_id, null: false
      t.string :name, null: false
      t.text :content, null: false
    end
  end
end

