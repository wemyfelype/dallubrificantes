class Product < ActiveRecord::Base
  belongs_to :category
  #has_many :objects, class_name: "object", foreign_key: "reference_id"

  
end
