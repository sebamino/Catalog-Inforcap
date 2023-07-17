class Product < ApplicationRecord
  validates :name,  presence: true,
                    uniqueness: true
  validates :price, presence: true,
                    numericality: { greater_than: 0 }
  validates :size,  presence: true
end
