class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.timestamps
    end
    add_index :series, :user_id
  end
end
