Football_statium = {
    suites: {
        Section_name: 'Box Seating',
        seat_info: {
            total_seats: 500,
            seats_available: 150
        },
        consetions: [
           "meals provided in suites"
        ]
    },
    mid_level: {
        Section_name: 'Covered seating',
        seat_info: {
            total_seats: 25000,
            seats_available: 9000
        },
        consetions: [
            "Iver's", "Kid Valley", "garlic fries", "Beer stands"
        ]
    },
    upper_level: {
        Section_name: 'Nose bleeds',
        seat_info: {
            total_seats: 35000,
            seats_available: 17000
        },
        consetions: [
            "Iver's", "Pizza",  "Beer stands"
        ]
    }
}

puts Football_statium[:suites][:seat_info][:seats_available]

puts Football_statium[:upper_level][:consetions]

Football_statium[:mid_level][:Section_name] = "Eye Level Seating"

puts Football_statium[:mid_level][:Section_name]
