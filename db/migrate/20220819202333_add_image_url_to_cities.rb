class AddImageUrlToCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :image_url, :string
  end
end
