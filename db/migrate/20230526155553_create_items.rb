class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :location
      t.string :condition
      t.text :description
      t.string :image_video

      t.timestamps
    end
  end
end
