class Category < ApplicationRecord
  # Validaciones
  validates :name,  presence: true,
                    uniqueness: true

  # Relaciones
  has_and_belongs_to_many :products
end
