Category.destroy_all
Client.destroy_all
Performer.destroy_all

categories = Category.create([ { category: 'Musical Act' }, { category: 'Comedy Act' }, { category: 'Circus Act' }])

20.times do
	Client.create(
		firstname: FFaker::Name::first_name,
		lastname: FFaker::Name::last_name,
		email: FFaker::Internet::free_email,
		password: "password",
		favorites: FFaker::Name.name
	)
	Performer.create(
		performer_name: FFaker::Name.name,
		email: FFaker::Internet::free_email,
		hourly_rate: "$100",
		password: "password",
		city: "San Francisco",
		category_id: 1,
		performer_subcategory: FFaker::Job.title,
		description: "Hello hhhhhhhhhhhh tttttttttttt rrrrrrrrrrr sssssssss vvvvvvvvv xxxxxxxxx bbbbbbbbbb mmmmmmmmmm",
		avatar_file_name: "best-beauty-rihanna.jpg",
		avatar_content_type: "image/jpeg",
		avatar_file_size: 61341,
		avatar_updated_at: "2015-10-06",
		video1: "https://www.youtube.com/watch?v=JF8BRvqGCNs",
		video2: "https://www.youtube.com/watch?v=hT_nvWreIhg",
		video3: "https://www.youtube.com/watch?v=RBumgq5yVrA"
	)
end

