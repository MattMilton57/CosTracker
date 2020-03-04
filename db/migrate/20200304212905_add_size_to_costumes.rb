class AddSizeToCostumes < ActiveRecord::Migration[6.0]
  def change
    add_column :costumes, :size, :string
  end
end
