class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :startDateConverted, :endDateConverted, :notes, :url
  has_many :luggages
  has_many :flights
  has_many :lodgings
end
