class Show < ActiveRecord::Base 
  def self.highest_rating 
    Show.maximum(:rating)
  end
  
  def self.most_popular_show 
    max = Show.maximum(:rating)
      Show.where("rating = #{max}")[0]
  end 
  def self.lowest_rating 
  Show.minimum(:rating)
  end 
  
  
  def self.least_popular_show
     min = Show.minimum(:rating)
      Show.where("rating = #{min}")[0]
  end 
end 