class Trip < ApplicationRecord
  has_many :luggages
  has_many :flights

  def startDateConverted
    self.startDate.strftime("%b-%d-%Y")
  end

  def endDateConverted
    self.endDate.strftime("%b-%d-%Y")
  end
end
