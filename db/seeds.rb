# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Employee.destroy_all
    Employee.create(name: 'Manager', email: 'manager@example.com', manager: 'true', password: 'secret')
    Employee.create(name: 'Employee 1', email: 'employee1@example.com', password: 'secret')
    Employee.create(name: 'Employee 2', email: 'employee2@example.com', password: "secret")
