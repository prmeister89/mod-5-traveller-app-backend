class LodgingSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :name, :bookingCode, :checkin, :checkout, :address, :info
end
