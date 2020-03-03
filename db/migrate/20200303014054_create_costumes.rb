class CreateCostumes < ActiveRecord::Migration[6.0]
  def change
    create_table :costumes do |t|
      t.string :costume_type
      t.string :era
      t.string :material
      t.string :color
      t.integer :barcode
      t.string :image

      t.timestamps
    end
  end
end
