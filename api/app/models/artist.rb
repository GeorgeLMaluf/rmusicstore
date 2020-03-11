class Artist < ApplicationRecord
    validates :name, presence: true
    has_many :albuns
    scope :onlyId, -> { select(:id)}
end
