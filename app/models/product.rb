class Product < ActiveRecord::Base
  belongs_to :category
  #has_one :category
  has_many :product_values

  accepts_nested_attributes_for :product_values
end
