# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gender.create([{description: 'Rock'}, {description: 'Jazz'}, {description: 'Disco'}])
TipoMedia.create([{description: 'CD-ROM'},{description: 'Fita K7'},{ description: 'DVD'}])
Artist.create([{name: 'AC/DC'},{name: 'Miles Davis'},{name: 'Anita Ward'}])

@rock = Gender.first;
@jazz = Gender.second;
@cd = TipoMedia.first;
@type = TipoMedia.second;
@acdc = Artist.first;
@miles = Artist.second;

Album.create([
    {title: 'Black Ice', gender: @rock, artist: @acdc, tipo_media: @cd, cover: "", price: 4.99},
    {title: 'Kind of Blue', gender: @jazz, artist: @miles, tipo_media: @type, cover: "", price: 2.99},
])