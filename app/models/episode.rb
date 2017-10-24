class Episode < ApplicationRecord
  has_many :univs
  has_one :timeline
  has_many :timeline_items, through: :timeline
end
