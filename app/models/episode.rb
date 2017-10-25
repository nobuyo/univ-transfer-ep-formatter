class Episode < ApplicationRecord
  has_many :univs
  # has_one :timeline
  has_many :timelineitems

  accepts_nested_attributes_for :univs
  accepts_nested_attributes_for :timelineitems

  # validates :name, presence: { message: '名前は必須項目です' }
  # validates :dept, presence: true

end
