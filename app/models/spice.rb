class Spice < ApplicationRecord
    validates :title, presence: true
    validates :image, presence: true
    validates :description, presence: true
    validates :notes, presence: true
    validates :rating, presence: true
end
