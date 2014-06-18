class CreateHarbors < ActiveRecord::Migration
  def change
    create_table :harbors do |t|
      t.string :process_id
      t.string :name
      t.string :subdomain
      t.string :port
      t.references :user, index: true
      t.string :password
      t.boolean :state

      t.timestamps
    end
  end
end
