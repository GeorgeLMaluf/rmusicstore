class TipoMedia < ApplicationRecord
    validates :description, presence: true, uniqueness: true
    has_many :albuns
    scope :onlyId, -> { select(:id)}
end