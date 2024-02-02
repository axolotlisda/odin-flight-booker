class Flight < ApplicationRecord

  # Flight
  # id:         integer
  # code:       string
  # created_at: datetime
  # updated_at: datetime

  def event_date_formatted
    event_date.strftime("%m/%d/%Y")
  end

   belongs_to :departure_airport,
   class_name: 'Airport',
   foreign_key: 'departure_airport_id'


   belongs_to :arrival_airport,
   class_name: 'Airport',
   foreign_key: 'arrival_airport_id'

  validates :start, presence: true

end
