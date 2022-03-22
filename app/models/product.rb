class Product < ApplicationRecord
  has_one_attached :image
  #Add multiple files
  has_many_attached :documents
end
