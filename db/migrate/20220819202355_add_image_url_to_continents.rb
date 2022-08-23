class AddImageUrlToContinents < ActiveRecord::Migration[6.0]
  def change
    add_column :continents, :image_url, :string
  end
end
