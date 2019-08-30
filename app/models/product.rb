class Product < ApplicationRecord
  has_many :carted_item
  accepts_nested_attributes_for :carted_item
end
