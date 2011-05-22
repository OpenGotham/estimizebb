class Player < ActiveRecord::Base
  belongs_to :team
  has_many :team_player_stats, :class_name => "TeamPlayerStats"
  has_many :games, :through => :team_player_stats
  
  has_many :estimates, :class_name => "PlayerGameStatEstimate"
  
  def name
    "#{first} #{last}"
  end
end
