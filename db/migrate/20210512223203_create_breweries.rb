class CreateBreweries < ActiveRecord::Migration[6.0]
  def change
    create_table :breweries do |t|
      t.string :name, null: false
      t.string :brewery_type
      t.string :street
      t.string :address_2
      t.string :address_3
      t.string :city
      t.string :state
      t.string :country_province
      t.string :postal_code
      t.string :country
      t.string :longitude
      t.string :latitude
      t.string :phone
      t.string :website_url
      t.integer :click_count, default: 0

      t.timestamps
    end
  end
end
