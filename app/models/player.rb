class Player < ActiveRecord::Base
  belongs_to :team
  has_many :team_player_stats, :class_name => "TeamPlayerStats"
  
  def name
    "#{first} #{last}"
  end
end
