class Team < ActiveRecord::Base
  has_many :players
  has_many :games

  def upcoming_games
    Game.upcoming.where("home_team_id = ? OR away_team_id = ?", self.id,self.id).order('starts_at asc')
  end
end
