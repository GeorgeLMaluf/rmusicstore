class Album < ApplicationRecord
  belongs_to :gender
  belongs_to :artist
  belongs_to :tipo_media

  scope :onlyId, -> { select(:id)}
end
