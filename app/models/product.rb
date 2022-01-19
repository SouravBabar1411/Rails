class Product < ApplicationRecord
    validates :productname, presence: true
    validates :quantity, presence: true
    validates :brand, presence: true
    validates :prize, presence: true
    validates :prize, numericality: true
end
