# application data
attending_states = AttendingState.create([
  {name: 'invited'},
  {name: 'attending'},
  {name: 'maybe'},
  {name: 'not_attending'}
  ])

# example data
clubs = Club.create([
	{ name: 'Hockey Club', description: 'Varsity Hockey' },
  { name: 'Football Club', description: 'Varsity Hockey'  },
  { name: 'Rugby Club', description: 'Varsity Hockey'  },
  { name: 'Netball Club', description: 'Varsity Hockey'  },
  { name: 'Tennis Club', description: 'Varsity Hockey'  },
  { name: 'Pokemon Club', description: 'Varsity Hockey'  },
  { name: 'Boat Club', description: 'Varsity Hockey'  },
  { name: 'Ski Club', description: 'Varsity Hockey'  },
  { name: 'Tramping Club', description: 'Varsity Hockey'  }
  ])

events = Event.create([
  {name: 'Winter Trials - Prems', description: '2014 Hockey trials', location: 'AGS Turf', club: clubs[0], time:DateTime.strptime("11/11/2013 15:00", "%m/%d/%Y %H:%M")},
  {name: 'Winter Trials - Champ', description: '2014 Hockey trials', location: 'DIO Turf', club: clubs[0], time:DateTime.strptime("11/11/2013 15:00", "%m/%d/%Y %H:%M")},
  {name: 'Trials - Indoor', description: '2014 Hockey trials', location: 'Auckland Domain', club: clubs[1], time:DateTime.strptime("11/11/2013 15:00", "%m/%d/%Y %H:%M")},
  {name: 'Uni Games', description: '2014 Hockey trials', location: 'Uni Gym', club: clubs[2], time:DateTime.strptime("11/11/2013 15:00", "%m/%d/%Y %H:%M")},
  {name: 'Social', description: '2014 Hockey trials', location: 'Epsom', club: clubs[2], time:DateTime.strptime("11/11/2013 15:00", "%m/%d/%Y %H:%M")}
  ])

users = User.create([
  {name: 'Joe Blogs', email:'test1@example.com', password: Devise.friendly_token[0,20]},
  {name: 'Jane Ace', email:'test2@example.com', password: Devise.friendly_token[0,20]},
  {name: 'Joe Black', email:'test3@example.com', password: Devise.friendly_token[0,20]},
  {name: 'Sheila Allen', email:'test4@example.com', password: Devise.friendly_token[0,20]},
  {name: 'Anna Strasberg', email:'test5@example.com', password: Devise.friendly_token[0,20]},
  {name: 'Mimi Rogers', email:'test6@example.com', password: Devise.friendly_token[0,20]},
  {name: 'Bo Derek', email:'test7@example.com', password: Devise.friendly_token[0,20]},
  {name: 'Loretta Lynn', email:'test8@example.com', password: Devise.friendly_token[0,20]},
  {name: 'Gracie Lantz', email:'test9@example.com', password: Devise.friendly_token[0,20]},
  {name: 'Dana Reeve', email:'test10@example.com', password: Devise.friendly_token[0,20]},
  {name: 'Stella Stevens', email:'test11@example.com', password: Devise.friendly_token[0,20]},
  {name: 'Demi Moore', email:'test12@example.com', password: Devise.friendly_token[0,20]}
  ])

events.each do |event|
  event.guests.create([
  {event: event, user_id: users[0].id, attending_state: attending_states[0]},
  {event: event, user_id: users[1].id, attending_state: attending_states[0]},
  {event: event, user_id: users[2].id, attending_state: attending_states[1]},
  {event: event, user_id: users[4].id, attending_state: attending_states[1]},
  {event: event, user_id: users[5].id, attending_state: attending_states[1]},
  {event: event, user_id: users[6].id, attending_state: attending_states[1]},
  {event: event, user_id: users[7].id, attending_state: attending_states[2]},
  {event: event, user_id: users[8].id, attending_state: attending_states[2]},
  {event: event, user_id: users[9].id, attending_state: attending_states[2]},
  {event: event, user_id: users[10].id, attending_state: attending_states[3]},
  {event: event, user_id: users[11].id, attending_state: attending_states[3]}
  ])
end