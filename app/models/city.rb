class City < ApplicationRecord
  acts_as_taggable_on :tags
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :country
end