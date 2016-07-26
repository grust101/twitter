require 'faker'

10.times do 


User.create(

	username: Faker::Internet.user_name, 
	first_name: Faker::Name.first_name, 
	last_name: Faker::Name.last_name,
	email: Faker::Internet.email, 
	password: Faker::Internet.password(8)
	)

end



5.times do 

	Relationship.create(
		follower_id: Faker::Number.number(1),
		following_id: Faker::Number.number(1)

)
end


20.times do

Tweet.create(
		content: Faker::Lorem.sentence, 
		user_id: Faker::Number.number(1)


	)


 end