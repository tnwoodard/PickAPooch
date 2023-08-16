class Pooch < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true
    validates :keywords, presence: true
    validates :description, presence: true
end
