class Trip < ApplicationRecord
  has_many :luggages
  has_many :flights
  has_many :lodgings

  def startDateConverted
    self.startDate.strftime("%b-%d-%Y")
  end

  def endDateConverted
    self.endDate.strftime("%b-%d-%Y")
  end
end
