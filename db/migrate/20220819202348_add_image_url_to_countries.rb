class AddImageUrlToCountries < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :image_url, :string
  end
end
