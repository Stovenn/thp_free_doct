# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# cities = ["Paris","London","Madrid","Tokyo","Kinshasa","Sydney","Parme","Chicago","Geneve","Berlin"]
#   cities.each do |city|
#     City.create(name:city)
# end


# 20.times do
#   doctors << Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: ["General","Ophtalmology","Dental","Neurology","Psychiatry","Urology"].sample, zip_code: Faker::Address.zip_code)
# end


# 50.times do
#   patients << Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
# end


# 100.times do
#   appointments << Appointment.create!(date:Faker::Date.in_date_period, patient: Patient.all.sample, doctor: Doctor.all.sample)
# end

# doctors = Doctor.all
cities = City.all
# patients = Patient.all
appointments = Appointment.all

# doctors.each do |doctor| doctor.update(city_id: cities.sample.id) end
# patients.each do |patient| patient.update(city_id: cities.sample.id) end
appointments.each do |appointment| appointment.update(city_id: appointment.doctor.city_id) end





puts "Toutes les donnees ont bien ete crees"