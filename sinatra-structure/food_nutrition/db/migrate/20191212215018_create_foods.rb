class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :category
      t.string :fat
      t.string :protein
      t.string :carbohydrates
    end
  end
end
