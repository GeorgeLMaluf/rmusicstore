class Gender < ApplicationRecord
    validates :description, presence: true, uniqueness: true
    scope :withoutTimes, -> { select( :id, :description)}
end