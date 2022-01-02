class Product < ApplicationRecord
  include CodeGenerator

  has_rich_text :description
 
  validates :name, presence: true
  validates :list_price, :sell_price, presence: true, numericality: { grater_than: 0, allow_nil: true}
  validates :code, uniqueness: true
  
  belongs_to :vendor
  
end
