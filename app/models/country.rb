class Country < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :continent
  has_many :cities
end