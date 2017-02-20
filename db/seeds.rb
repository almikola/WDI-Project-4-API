User.destroy_all
Event.destroy_all
Invitation.destroy_all

User.create!([
  {
    email: "kenny@kenny.com",
    password: "password",
    password_confirmation: "password"
  },
  {
    email: "julie@julie.com",
    password: "password",
    password_confirmation: "password"
  }
])

Event.create!([
  {
    title: "Dinner with Ladies",
    date: Date.new,
    time: DateTime.new,
    owner_id: User.last.id
  },
  {
    title: "Dinner with Lads",
    date: Date.new,
    time: DateTime.new,
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
