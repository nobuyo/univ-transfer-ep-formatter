class Episode < ApplicationRecord
  has_many :univs
  # has_one :timeline
  has_many :timelineitems
  has_many :questions

  accepts_nested_attributes_for :univs
  accepts_nested_attributes_for :timelineitems
  accepts_nested_attributes_for :questions

  # validates :name, presence: { message: '名前は必須項目です' }
  # validates :dept, presence: true

end
