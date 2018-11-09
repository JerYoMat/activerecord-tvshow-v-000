class Show < ActiveRecord::Base 
  def self.highest_rating 
    Show.maximum(:rating)
  end
  
  def self.most_popular_show 
      max= Show.maximum(:rating)
      Show.where(:rating = max)
  end 
end 