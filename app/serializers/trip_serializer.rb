class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :startDateConverted, :endDateConverted, :notes, :luggage
end
