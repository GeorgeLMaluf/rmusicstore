class AlbumSerializer < ActiveModel::Serializer
  belongs_to :gender
  belongs_to :artist
  belongs_to :tipo_media
  attributes :id, :title, :cover, :price, :gender, :artist, :tipo_media 
end
