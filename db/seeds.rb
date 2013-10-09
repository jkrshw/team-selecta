# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
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

attending_states = AttendingState.create([
  {name: 'invited'},
  {name: 'attending'},
  {name: 'maybe'},
  {name: 'not_attending'}
  ])