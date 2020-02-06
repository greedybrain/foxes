class CreateScissors < ActiveRecord::Migration[6.0]
  def change
    create_table :scissors do |t|

      t.timestamps
    end
  end
end
