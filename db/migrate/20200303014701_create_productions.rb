class CreateProductions < ActiveRecord::Migration[6.0]
  def change
    create_table :productions do |t|
      t.string :title
      t.datetime :first_dress, optional: true
      t.datetime :strike, optional: true
      t.integer :user_id, optional: true
      t.integer :theatre_id, optional: true
      t.timestamps
    end
  end
end
