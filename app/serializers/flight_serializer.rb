class FlightSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :from, :to, :flightNumber, :departure, :gate, :boardingGroup, :seat
end
