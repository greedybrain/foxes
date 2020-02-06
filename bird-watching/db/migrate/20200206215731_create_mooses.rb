class CreateMooses < ActiveRecord::Migration[6.0]
  def change
    create_table :mooses do |t|
      t.string :name
      t.integer :park_id
      t.timestamps
    end
  end
end
