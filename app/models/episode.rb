class Episode < ApplicationRecord
  has_many :univs
  # has_one :timeline
  has_many :timelineitems

  accepts_nested_attributes_for :univs
  accepts_nested_attributes_for :timelineitems
end
