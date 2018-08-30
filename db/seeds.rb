# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# :
#
#   debates = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Vote.destroy_all
Debat.destroy_all
User.destroy_all


matthieu = User.create!( email: 'matthieu@gmail.com', password: 'azerty', firstname: 'matthieu', lastname: 'cartillier')
joseph = User.create!( email: 'joseph@gmail.com', password: 'azerty', firstname: 'joseph', lastname: 'blanchard')

first_debat = Debat.create!(
	title: "first debat",
	description: "Pensez vous que Joseph est Portuguais ?",
	due_date: Date.today + 10 
	)

# votes = Vote.create!([{ value: true, description: "description du vote de matthieu", debat_id: first_debat.id, user_id: matthieu.id},
# 					 { value: false, description: "description du vote de joseph", debat_id: first_debat.id, user_id: joseph.id}
# 					])


Vote.create!( value: true, description: "Oui moi je pense qu'il est vraiment ", debat_id: first_debat.id, user_id: matthieu.id)
Vote.create!( value: false, description: "Allez vous faire ......", debat_id: first_debat.id, user_id: joseph.id)