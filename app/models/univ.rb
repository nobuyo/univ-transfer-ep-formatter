class Univ < ApplicationRecord
  belongs_to :episode
  has_many :subjects

  accepts_nested_attributes_for :subjects
end
