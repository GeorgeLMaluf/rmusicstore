class TipoMedia < ApplicationRecord
    validates :description, presence: true, uniqueness: true
    scope :withoutTimes, -> { select( :id, :description)}
    scope :onlyId, -> { select(:id)}
end