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