class Showing < ActiveRecord::Base
  attr_accessible :movie_id, :number_of_available_seats, :showing_time
  belongs_to :movie
  validates :number_of_available_seats, :showing_time, :presence => true
  

end
