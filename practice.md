User.destroy_all
Event.destroy_all
Invitation.destroy_all

u1 = User.create!({
  email: "aleks@amikola.com",
  first_name: "Aleks",
  last_name: "Mikola",
  password: "password",
  password_confirmation: "password",
  image: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/15590029_10208167360398916_7534883002695391319_n.jpg?oh=26f981bfc3d84d74d45b21147ae07a5f&oe=5966DE42"
})

u2 = User.create!({
  email: "jessica@gmail.com",
  first_name: "Jessica",
  last_name: "Gargini",
  password: "password",
  password_confirmation: "password",
  image: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/13321911_3207183773511_1319439917659361874_n.jpg?oh=25d8e4a9f8f93bcbe4a290c257a1c31a&oe=596FE622"
})

u3 = User.create!({
  email: "grace@gmail.com",
  first_name: "Grace",
  last_name: "Ryan",
  password: "password",
  password_confirmation: "password",
  image: "https://scontent-lhr3-1.xx.fbcdn.net/v/t31.0-8/13995668_10157293209155611_3781842300380912359_o.jpg?oh=67ff3815f9c58ce8b7f23fa764d68935&oe=595B0090"
})

Event.create!([
  {
    title: "Dinner with Ladies",
    date: Date.new,
    time: DateTime.new,
    image: "http://www.fillmurray.com/302/302",
    owner_id: u1.id
  },
  {
    title: "Dinner with Lads",
    date: Date.new,
    time: DateTime.new,
    image: "http://www.fillmurray.com/303/303",
    owner_id: u1.id
  }
])

Invitation.create!([
  {
    event_id: Event.first.id,
    receiver_id: u2.id
  }
])
