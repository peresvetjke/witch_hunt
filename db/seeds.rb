# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

type1 = Type.create!(title: 'Иностранный агент')
type2 = Type.create!(title: 'Террористическая организация')
Entity.create!(title: 'Правый сектор', types: [type1, type2])
