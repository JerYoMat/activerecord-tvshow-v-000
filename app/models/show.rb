class Show < ActiveRecord::Base 
  def highest_rating 
    Show.find_by.max
  end 
end 