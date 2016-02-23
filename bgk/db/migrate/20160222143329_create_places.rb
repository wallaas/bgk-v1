class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :place_name
      t.string :owner
      t.text :short_description
      t.string :address
      t.string :website
      t.string :email
      t.string :telephone
      t.text :opening_hours
      t.text :passion_quote
      t.text :passion_text

      t.timestamps null: false
    end
end
