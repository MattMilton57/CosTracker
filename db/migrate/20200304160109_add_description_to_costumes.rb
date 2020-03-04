class AddDescriptionToCostumes < ActiveRecord::Migration[6.0]
  def change
    add_column :costumes, :description, :string
  end
end
