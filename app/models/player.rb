class Player < ActiveRecord::Base
  belongs_to :team

  has_many :games, :through => :team_player_stats
  
  has_many :estimates, :class_name => "PlayerGameStatEstimate"

  has_many :team_player_stats
  
  def name
    "#{first} #{last}"
  end
end
