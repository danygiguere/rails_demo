class Pokemon < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3 }
    validates :type1, presence: true
    validates :type2, presence: false
    validates :total, presence: true
    validates :hp, presence: true
    validates :attack, presence: true
    validates :defense, presence: true
    validates :sp_atk, presence: true
    validates :sp_def, presence: true
    validates :speed, presence: true
    validates :generation, presence: true
end
