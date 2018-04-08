# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    Employee.create(name: 'manager', email: 'manager@example.com', manager: 'true', password: 'secret')
    Employee.create(name: 'employee', email: 'employee@example.com', password: 'secret')
