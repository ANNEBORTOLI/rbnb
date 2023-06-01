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

User.create!(
  email: "marco@gmail.com",
  first_name: 'Marco',
  last_name: 'Jones',
  password: '123456'
)

User.create!(
  email: "gabriel@gmail.com",
  first_name: 'Gabriel',
  last_name: 'Santos',
  password: '123456'
)

User.create!(
  email: "bruno@gmail.com",
  first_name: 'Bruno',
  last_name: 'Santos',
  password: '123456'
)

puts "Creating properties..."

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Copacabana, Rio de Janeiro",
  title: "Imovel luxuoso com vista para o mar",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://s2.glbimg.com/T7ZAimBgK10jaelSvIABQ9fBDLk=/smart/e.glbimg.com/og/ed/f/original/2019/12/10/apartamentos-design-airbnb1.jpg"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Ipanema, Rio de Janeiro",
  title: "Apartamento maravilhoso em Ipa",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://www.blogvambora.com.br/wp-content/uploads/2021/02/Apto-Sacada-Vila-Olimpia.jpg"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Lagoa, Rio de Janeiro",
  title: "Cobertura na Lagoa Rodrigo de Freitas",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "http://hus.arq.br/app/uploads/2018/05/9-9-1280x720.png"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Jardim Botânico, Rio de Janeiro",
  title: "Jardim Botânico, pertinho do Parque Lage",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://news.airbnb.com/wp-content/uploads/sites/4/2018/08/mostwishlisted-1-1.jpg"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Peixoto, Rio de Janeiro",
  title: "Linda propriedade no bairro Peixoto em Copacabana",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://news.airbnb.com/wp-content/uploads/sites/4/2018/08/MW10-101.jpg"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Barra da Tijuca, Rio de Janeiro",
  title: "Fique perto da praia mais gostosa do Rio!",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://news.airbnb.com/wp-content/uploads/sites/4/2018/08/MW8-8-2.jpg"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Leme, Rio de Janeiro",
  title: "Apartamento aconchegante no Leme",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://news.airbnb.com/wp-content/uploads/sites/4/2018/08/MW7-7-2.jpg"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "São Conrado, Rio de Janeiro",
  title: "Apartamento em São Conrado",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://news.airbnb.com/wp-content/uploads/sites/4/2018/08/MW6-6-2.jpg"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Botafogo, Rio de Janeiro",
  title: "Apartamento funcional em Botafogo",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://news.airbnb.com/wp-content/uploads/sites/4/2018/08/most-wishlisted-2-2-21.jpg"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Catete, Rio de Janeiro",
  title: "Flat, próximo ao metrô",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://news.airbnb.com/wp-content/uploads/sites/4/2018/08/MW9-9-2.jpg"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Flamengo, Rio de Janeiro",
  title: "Cobertura duplex no Flamengo",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://news.airbnb.com/wp-content/uploads/sites/4/2018/08/MW3-3.jpg"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Largo do Machado, Rio de Janeiro",
  title: "Apartamento no melhor ponto do Largo do Machado",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://news.airbnb.com/wp-content/uploads/sites/4/2018/08/MW5-5-21.jpg"
)

Property.create!(
  user: User.all.sample,
  home_type: Property::TYPES.sample,
  total_occupancy: rand(1..10),
  address: "Recreio dos Bandeirantes, Rio de Janeiro",
  title: "Apartamento no Recreio dos Bandeirantes",
  price: rand(50..500),
  summary: "Regras do condomínio: não é permitido aparelhos de som em nenhuma das áreas comuns do condomínio; não é permitido copos ou garrafas de vidro na área de piscina, não é permitido que pets andem sem coleira na área comum;
  Nao e permitido pets na area da piscina. Sempre recolher o coco dos pets .
  ",
  image_url: "https://news.airbnb.com/wp-content/uploads/sites/4/2018/08/MW4-41.jpg"
)

puts "Finished!"
