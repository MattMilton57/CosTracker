class CreateProductionsCostumes < ActiveRecord::Migration[6.0]
  def change
    create_table :productions_costumes do |t|
      t.integer :production_id
      t.integer :costume_id
      t.timestamps
    end
  end
end
