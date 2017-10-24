class Subject < ApplicationRecord
  has_many :books

  accepts_nested_attributes_for :books
end
