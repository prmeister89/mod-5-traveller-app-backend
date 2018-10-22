class FlightSerializer < ActiveModel::Serializer
  attributes :id, :from, :to, :flightNumber, :departure, :gate, :boardingGroup, :seat
  belongs_to :trip
end
