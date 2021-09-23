# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {name: 'ricardo', role: 'admin',    password: '123456'},
  {name: 'geo',     role: 'employee', password: '234567'},
  {name: 'tomas',   role: 'employee', password: '345678'},
  {name: 'tito',    role: 'employee', password: '456789'},
])