class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :year
      t.string :make
      t.string :color

      t.timestamps
    end
  end
end
