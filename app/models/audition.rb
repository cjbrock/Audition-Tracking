class Audition < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :location
  validates_presence_of :reqs
  validates_presence_of :date
end
