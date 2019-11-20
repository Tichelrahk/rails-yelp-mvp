class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  array_of_restos = %w[chinese italian japanese french belgian]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: array_of_restos }
end
