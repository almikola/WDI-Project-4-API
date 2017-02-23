User.destroy_all
Event.destroy_all
Invitation.destroy_all

User.create!([
  {
    email: "kenny@kenny.com",
    first_name: "Kenny",
    last_name: "Kenny",
    password: "password",
    password_confirmation: "password",
    image: "http://www.fillmurray.com/300/300"
  },
  {
    email: "julie@julie.com",
    first_name: "Julie",
    last_name: "Julie",
    password: "password",
    password_confirmation: "password",
    image: "http://www.fillmurray.com/301/301"
  }
])

Event.create!([
  {
    title: "Dinner with Ladies",
    date: Date.new,
    time: DateTime.new,
    image: "http://www.fillmurray.com/302/302",
    owner_id: User.last.id
  },
  {
    title: "Dinner with Lads",
    date: Date.new,
    time: DateTime.new,
    image: "http://www.fillmurray.com/303/303",
    owner_id: User.first.id
  }
])

Invitation.create!([
  {
    event_id: Event.first.id,
    receiver_id: User.last.id
  },
  {
    event_id: Event.last.id,
    receiver_id: User.first.id
  }
])
