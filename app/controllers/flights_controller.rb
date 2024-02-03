class FlightsController < ApplicationController

  def index
    @departure_codes = Flight.distinct.pluck(:departure_airport_id)
    @departure_airport = Airport.distinct.pluck(:name)
    @arrival_airport = Airport.distinct.pluck(:name)
    @airports_index = Airport.all


    datess = params[:date]
    a_c = params[:arrival_code]
    a_id = Airport.where(name: a_c).pluck(:id)

    d_c = params[:departure_code]
    d_id = Airport.where(name: d_c).pluck(:id)

    @recommended_flight = Flight.where(arrival_airport_id: a_id ,departure_airport_id: d_id, start: datess)

  end

  def new
    @flight = Flight.new
  end

  def create

    @flight = Flight.new

    if @flight.save
      redirect_to @flight, notice: 'flight saved.'
    else
      redirect_to @flight, alert: 'flight error'
    end
  end

  def show
    @airports = Airport.all
  end

  def search

    key = "%#{params[:key]}%"

    @airports = Airport.where("name LIKE ?", key)

  end

  def searching






  end

end
