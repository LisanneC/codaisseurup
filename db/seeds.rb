User.destroy_all

miriam = User.create!(email: "miriam@codaisseurup.com", password: "123456")

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
                    user: miriam)
