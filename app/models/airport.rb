class Airport < ApplicationRecord

  # Airport

  # id:                   integer
  # departure_airport_id: integer
  # arrival_airport_id:   integer
  # start:                datetime
  # flight_duration:      integer
  # created_at:           datetime
  # updated_at:           datetime

  has_many :departing_flights,
  class_name: 'Flight',
  foreign_key: 'departure_airport_id',
  dependent: :destroy

  has_many :arriving_flights,
  class_name: "Flight",
  foreign_key: "arrival_airport_id",
  dependent: :destroy
end
