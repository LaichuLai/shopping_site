class Product < ApplicationRecord
  extend FriendlyId
  #friendly_id :用某個方式產生slugged的id名稱,  預設寫到slugged的欄位裡面, slug_colum: :把寫進的欄位換成某欄
  friendly_id :code_generator, use: :slugged, slug_column: :code

  validates :name, presence: true
  validates :list_price, :sell_price, presence: true, numericality: { grater_than: 0, allow_nil: true}
  validates :code, uniqueness: true
  belongs_to :vendor

  private
  def code_generator
    SecureRandom.hex(8)
  end
end
