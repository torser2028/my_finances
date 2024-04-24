# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.find_or_create_by(name: "Ahorro")
Category.find_or_create_by(name: "Alimentación")
Category.find_or_create_by(name: "Vehículo")
Category.find_or_create_by(name: "Deudas")
Category.find_or_create_by(name: "Honorarios")
Category.find_or_create_by(name: "Transferencias")
Category.find_or_create_by(name: "Inversión")
Category.find_or_create_by(name: "Ocio")
Category.find_or_create_by(name: "Regalos")
Category.find_or_create_by(name: "Retiros")
Category.find_or_create_by(name: "Seguros")
Category.find_or_create_by(name: "Salud")
Category.find_or_create_by(name: "Servicios")
Category.find_or_create_by(name: "Trabajo")
Category.find_or_create_by(name: "Vivienda")
