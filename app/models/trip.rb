class Trip < ApplicationRecord

  def startDateConverted
    self.startDate.strftime("%b-%d-%Y")
  end

  def endDateConverted
    self.endDate.strftime("%b-%d-%Y")
  end
end
