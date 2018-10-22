class LuggageSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :qty, :item
  # belongs_to :trip
end
