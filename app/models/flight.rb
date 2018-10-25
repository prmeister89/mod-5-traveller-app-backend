class Flight < ApplicationRecord
  belongs_to :trip

  def departureConverted
    self.departure.strftime("%I:%M %p")
  end

end
