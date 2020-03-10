class Artist < ApplicationRecord
    validates :name, presence: true
    scope :withoutTimes, -> { select( :id, :name)}
    scope :onlyId, -> { select(:id)}
end
