class City < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :country

  #scope :filter_by_av, -> (status) { where status: status }
  #scope :filter_by_location, -> (location_id) { where location_id: location_id }
  scope :filter_by_starts_with, -> (name) { where("name like ?", "#{name}%")}

end