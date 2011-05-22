class Player < ActiveRecord::Base
  belongs_to :team
  has_many :team_player_stats
  
  def name
    "#{first} #{last}"
  end
end
