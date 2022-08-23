class AddTemperatureToCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :avg_temp_jan, :integer
    add_column :cities, :avg_temp_feb, :integer
    add_column :cities, :avg_temp_mar, :integer
    add_column :cities, :avg_temp_apr, :integer
    add_column :cities, :avg_temp_may, :integer
    add_column :cities, :avg_temp_jun, :integer
    add_column :cities, :avg_temp_jul, :integer
    add_column :cities, :avg_temp_aug, :integer
    add_column :cities, :avg_temp_sep, :integer
    add_column :cities, :avg_temp_oct, :integer
    add_column :cities, :avg_temp_nov, :integer
    add_column :cities, :avg_temp_dec, :integer
  end
end
