class PlayerGameStatEstimate < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 50
      
  belongs_to :user
  belongs_to :game
  belongs_to :player
  
  scope :past, :conditions => ["starts_at < ?", DateTime.now], :order => "starts_at desc"
  
  
  scope :upcoming, joins(:game) & Game.upcoming 
  scope :past, joins(:game) & Game.past 

end
