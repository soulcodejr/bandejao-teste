class Lunch < ActiveRecord::Base
  scope :week, -> { where( :date => Date.today.at_beginning_of_week..Date.today.at_end_of_week - 2) } 

  validates :date, presence: true 

end