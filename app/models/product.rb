class Product < ApplicationRecord
  # Validaciones
  validates :name,  presence: true,
                    uniqueness: true
  validates :price, presence: true,
                    numericality: { greater_than: 0 }
  validates :size,  presence: true

  # Relaciones
  has_and_belongs_to_many :categories
end
