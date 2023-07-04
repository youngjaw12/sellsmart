class CreateSellerspages < ActiveRecord::Migration[7.0]
  def change
    create_table :sellerspages do |t|
      t.string :sellers_name
      t.integer :phone_number
      t.string :location
      t.string :profile_photo
      t.string :page_photo
      t.text :sellers_bio

      t.timestamps
    end
  end
end
