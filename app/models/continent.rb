class Continent < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :countries
end