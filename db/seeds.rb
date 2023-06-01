puts "Cleaning database..."
User.destroy_all
Property.destroy_all
Reservation.destroy_all

puts "Creating users..."
User.create!(
  email: "fred@gmail.com",
  first_name: 'Fred',
  last_name: 'Silva',
  password: '123456'
)

User.create!(
  email: "lola@gmail.com",
  first_name: 'Lola',
  last_name: 'Jones',
  password: '123456'
)

puts "Creating properties..."
10.times do |i|
  Property.create!(
    user: User.all.sample,
    home_type: Property::TYPES.sample,
    total_occupancy: rand(1..10),
    address: "Address #{i + 1}",
    price: rand(50..500),
    summary: "Essa linda e espaçosa casa pé na areia em Angra dos Reis fica no condominio Caieirinha, seguranças rodando a area 24 horas entre terra e mar, trazendo conforto e segurança para sua familia"
  )
end

puts "Finished!"
