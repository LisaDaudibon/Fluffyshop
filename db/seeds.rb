require 'faker'

User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
Item.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('items')

my_user = User.create(
	first_name: 'Lisa',
	last_name: 'Chaton',
	email: 'chaton@yopmail.com',
	password: 'azerty',
	is_admin: 'true'
)

picture_item = ['Photo chat mignon','Photo chat blanc','Photo chat gris','Photo chat blanc','Photo chat roux','Photo chat tigré']

description_picture = [
	"La photo montre un petit chaton tigré à la fourrure soyeuse, il fait ses premiers pas accompagné de son frère en arrière plan.",
	"Le chat dans la photo est paisiblement allongé sur une couverture grise, les yeux fermés et le visage calme, parfaitement détendu.",
  "Dans cette photo, le félin est assis fièrement sur un meuble en bois, l'air vigilant, prêt à bondir à la moindre occasion.",
  "La photo montre un chaton adorable avec de grands yeux ronds et des oreilles pointues, qui semble prêt à conquérir le monde.",
	"Dans la photo, le chat roux aux yeux bleus est allongé sur un canapé blanc, observant le monde avec une curiosité tranquille.",
  "La photo capture un instant de relaxation, avec le félin tigré qui s'étire les pattes avant contre un mur de couleur bleue."
]

url_picture = [
	'https://images.unsplash.com/photo-1583524505974-6facd53f4597?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
  'https://images.unsplash.com/photo-1558674378-e4334d4fecc2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1599625374666-c1b9db78295f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1600489601447-81ce0b723d44?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1587996833651-06a23343b15d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
	'https://images.unsplash.com/photo-1535476593072-5a085be9f713?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'
]

6.times do |i|
	Item.create(
		name: picture_item[i],
		description: description_picture[i],
		price: 8,
		image_url: url_picture[i]
	)
end

Item.create(
	name: 'Mug patoune',
	description: "Pourquoi avoir un mug quand on peut avoir un mug patoune?",
	price: 10,
	image_url: "https://kittiesandcream.ca/cdn/shop/products/Cat-Paw-Mug_1086x.jpg?v=1598495642",
)

Item.create(
	name: 'Stickers chats',
	description: "Il n'y a jamais assez de chats, mieux vaut en coller de partout.",
	price: 5,
	image_url: "https://i.etsystatic.com/21998926/r/il/0e48bf/2504898018/il_1588xN.2504898018_72vu.jpg",
)

Item.create(
	name: 'Magnet chat',
	description: "Ce magnifique aimant embellira votre frigo.",
	price: 5,
	image_url: "https://i.etsystatic.com/15960486/r/il/981936/3544045515/il_1588xN.3544045515_vf5f.jpg",
)

Item.create(
  name: 'Carte postale chat',
  description: "Envoyez une carte à vos amis fans de Charry Potter.",
  price: 5,
  image_url: "https://i.etsystatic.com/15960486/r/il/edffc0/3736516717/il_1588xN.3736516717_skjq.jpg",
)