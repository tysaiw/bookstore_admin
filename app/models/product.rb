class Product < ApplicationRecord
  validates :title, :num_pages, :price, presence:true
  validates :num_pages, :price, numericality:{ greater_than: 0}
end
