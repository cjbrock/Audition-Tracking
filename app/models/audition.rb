class Audition < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :location
  validates_presence_of :reqs
  validates_presence_of :date
  
  NO_INTEREST = 0
  INTEREST    = 1

  def flip_status
    if self.status == NO_INTEREST
      self.update_attributes(:status => INTEREST)
    else
      self.update_attributes(:status =>NO_INTEREST)
    end
  end
  
  def display_status
    self.status == NO_INTEREST ? "Not Interested" : "Interested"
  end
end


