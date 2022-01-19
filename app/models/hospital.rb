class Hospital < ApplicationRecord
    validates :name, presence: true
    validates :facility, presence: true
    validates :name, length: { minimum: 2 }
end
