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

picture_item = ['Photo chat mignon', 'Photo chat noir','Photo chat blanc', 'Photo chat gouttière','Photo chat roux','Photo chat tigré']

description_picture = [
	"La photo de chat montre un félin à la fourrure épaisse et soyeuse, avec des rayures distinctives qui lui donnent un air sauvage.",
	"Dans la photo de chat, le félin est assis fièrement sur un rebord de fenêtre, les yeux étroits et l'air vigilant, prêt à bondir à la moindre occasion.",
	"La photo de chat capture un instant de jeu, avec le félin bondissant dans les airs pour attraper un jouet suspendu.",
	"Le chat dans la photo est paisiblement allongé sur une couverture douce, les yeux mi-clos et le souffle régulier, parfaitement détendu.",
	"Dans la photo de chat, le félin est perché sur une étagère haute, observant le monde avec une curiosité tranquille.",
	"La photo de chat montre un chaton adorable avec de grands yeux ronds et des oreilles pointues, qui semble prêt à conquérir le monde."]

url_picture = [
	'https://images.unsplash.com/photo-1583524505974-6facd53f4597?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
	'https://images.unsplash.com/photo-1600489601447-81ce0b723d44?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
	'https://images.unsplash.com/photo-1587996833651-06a23343b15d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
	'https://images.unsplash.com/photo-1558674378-e4334d4fecc2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
	'https://images.unsplash.com/photo-1599625374666-c1b9db78295f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
	'https://images.unsplash.com/photo-1494256997604-768d1f608cac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1229&q=80']

6.times do |i|
	Item.create(
		name: picture_item[i],
		description: description_picture[i],
		price: rand(1..5)*5,
		image_url: url_picture[i]
		)
end

Item.create(
	name: 'Mug chat',
	description: "Pourquoi avoir un mug ennuyeux quand on peut avoir un mug avec un chat trop mignon?",
	price: rand(1..5)*5,
	image_url: "https://i.etsystatic.com/25157788/r/il/0fb2da/3202762068/il_1588xN.3202762068_lsd0.jpg",
	)

Item.create(
	name: 'Stickers chats',
	description: "Il n'y a jamais assez de chats, mieux vaut en coller de partout.",
	price: rand(1..5)*5,
	image_url: "https://i.etsystatic.com/21998926/r/il/0e48bf/2504898018/il_1588xN.2504898018_72vu.jpg",
	)

Item.create(
	name: 'Magnet chat',
	description: "Ce magnifique magnet embellira votre frigo et vous donnera le sourire.",
	price: rand(1..5)*5,
	image_url: "https://i.etsystatic.com/15960486/r/il/981936/3544045515/il_1588xN.3544045515_vf5f.jpg",
	)

Item.create(
  name: 'Carte postale chat',
  description: "Envoyer une belle carte postale chat à l'être aimé.",
  price: rand(1..5)*5,
  image_url: "https://i.etsystatic.com/15960486/r/il/edffc0/3736516717/il_1588xN.3736516717_skjq.jpg",
  )