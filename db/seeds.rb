# Clear existing data
Flight.destroy_all

flights_data = [
  { departure_airport: Airport.find_by(code: 'SFO'), arrival_airport: Airport.find_by(code: 'JFK'), start: DateTime.now, flight_duration: 6 },
  { departure_airport: Airport.find_by(code: 'LAX'), arrival_airport: Airport.find_by(code: 'ORD'), start: DateTime.now, flight_duration: 4 },
  { departure_airport: Airport.find_by(code: 'ATL'), arrival_airport: Airport.find_by(code: 'CDG'), start: DateTime.now, flight_duration: 9 },
  # Add more flights as needed
]

flights_data.each do |flight_data|
  Flight.create!(flight_data)
end
