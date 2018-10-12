class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :startDate, :endDate, :notes
end
