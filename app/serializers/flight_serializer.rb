class FlightSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :from, :to, :flightNumber, :departureConverted, :gate, :boardingGroup, :seat, :ticket
end
