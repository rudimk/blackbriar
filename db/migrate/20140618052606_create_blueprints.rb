class CreateBlueprints < ActiveRecord::Migration
  def change
    create_table :blueprints do |t|
      t.string :name
      t.text :description
      t.references :harbor, index: true

      t.timestamps
    end
  end
end
