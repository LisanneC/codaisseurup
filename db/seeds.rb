Category.destroy_all
User.destroy_all

tech = Category.create!(name: "Tech")
fun = Category.create!(name: "Fun")
food = Category.create!(name: "food")
sport = Category.create!(name: "Sport")
dance = Category.create!(name: "Dance")

miriam = User.create!(email: "miriam@codaisseurup.com", password: "123456")
joe = User.create!(email: "joe@codaisseurup.com", password: "098767")
jess = User.create!(email: "jess@codaisseurup.com", password: "7654321")

#Profile first_name:string last_name:string bio:text user:references

event = Event.create!(name: "Hackathon",
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

event = Event.create!(name: "Fest",
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

event = Event.create!(name: "Beach",
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
