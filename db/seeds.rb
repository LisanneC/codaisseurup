Registration.destroy_all
Photo.destroy_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all

#Category
tech = Category.create!(name: "Tech")
fun = Category.create!(name: "Fun")
food = Category.create!(name: "food")
sport = Category.create!(name: "Sport")
dance = Category.create!(name: "Dance")

#User
miriam = User.create!(email: "miriam@codaisseurup.com", password: "123456")
joe = User.create!(email: "joe@codaisseurup.com", password: "098767")
jess = User.create!(email: "jess@codaisseurup.com", password: "7654321")

#Profile first_name:string last_name:string bio:text user:references

event1 = Event.create!(name: "Hackathon",
                    description: "Hackathon codaisseurup",
                    location: "Amsterdam",
                    price: 100,
                    capacity: 20,
                    includes_food: true,
                    includes_drinks: true,
                    starts_at: "07/04/2017 10:00",
                    ends_at: "07/04/2017 12:00",
                    active: true,
                    user: miriam,
                    categories: [tech, fun, food])

event2 = Event.create!(name: "Fest",
                    description: "Festival",
                    location: "Eindhoven",
                    price: 300,
                    capacity: 100,
                    includes_food: true,
                    includes_drinks: true,
                    starts_at: "07/08/2017 11:00",
                    ends_at: "07/09/2017 10:00",
                    active: true,
                    user: joe,
                    categories: [food, dance, fun])

event3 = Event.create!(name: "Beach",
                    description: "All day fun!",
                    location: "Mastricht",
                    price: 50,
                    capacity: 80,
                    includes_food: false,
                    includes_drinks: true,
                    starts_at: "07/09/2017 11:00",
                    ends_at: "07/09/2017 10:00",
                    active: true,
                    user: jess,
                    categories: [food, dance, sport, fun])

# Photos
photo1 = Photo.create!(remote_image_url:"http://res.cloudinary.com/liss/image/upload/v1499346314/Hackathon.jpg", image: http://res.cloudinary.com/liss/image/upload/v1499539893/Here_I_Stand__Usher_album_fahjrx.jpg, event: event1)
photo2 = Photo.create!(remote_image_url:"http://res.cloudinary.com/liss/image/upload/v1499346314/codes.jpg", event: event1)
photo3 = Photo.create!(remote_image_url:"http://res.cloudinary.com/liss/image/upload/v1499346314/what_the_Hackathon.jpg", event: event1)

#Registrations
# Registration.create!(event: event1, user: miriam, price: 50, total: 100, starts_at: 10.days.from_now, ends_at: 12.days.from_now)
# Registration.create!(event: event1, user: joe, price: 50, total: 200, starts_at: 20.days.from_now, ends_at: 24.days.from_now)
