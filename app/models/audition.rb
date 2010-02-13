class Audition < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :location
  validates_presence_of :reqs
  validates_presence_of :date
  
  NO_INTEREST = 0
  INTEREST    = 1

  named_scope :past, lambda {{:conditions => ['date < ?', Time.now] }}
  named_scope :active, lambda {{:conditions => ['date >= ?', Time.now.beginning_of_day] }}
  named_scope :basic, :select => 'id, title, location, date, status'
  named_scope :alpha, :order => 'date asc'
  named_scope :ralpha, :order => 'date desc'

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


