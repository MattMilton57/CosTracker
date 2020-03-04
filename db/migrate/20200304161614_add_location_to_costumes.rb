class AddLocationToCostumes < ActiveRecord::Migration[6.0]
  def change
    add_column :costumes, :location, :string
  end
end
