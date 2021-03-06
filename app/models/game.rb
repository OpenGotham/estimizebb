class Game < ActiveRecord::Base
  belongs_to :home_team, :class_name => "Team", :foreign_key => "home_team_id"
  belongs_to :away_team, :class_name => "Team", :foreign_key => "away_team_id"
  
  has_many :team_player_stats#, :class_name => "TeamPlayerStats"
  
  #scope :inprogress, where(:complete => true)
  scope :upcoming, :conditions => ["starts_at <= ? AND starts_at > ?", DateTime.now + 2.day, DateTime.now]
  scope :past, :conditions => ["starts_at < ?", DateTime.now], :order => "starts_at desc"
  #scope :current_upcoming, where(:in_progress => true)
  #scope :pending, :conditions => ["starts_at >= ?", DateTime.now]
  #scope :upcoming, :conditions => ["starts_at <= ?", DateTime.now + 2.day]

  
  def to_s
    "#{starts_at.to_s(:month_day_short)} - #{away_team.mlb_id} vs. #{home_team.mlb_id}"
  end
  
  def home_team_player_stats
    TeamPlayerStat.where("team_id = ? AND game_id = ?",home_team.id, self.id)
  end
  
  def away_team_player_stats
    TeamPlayerStat.where("team_id = ? AND game_id = ?",away_team.id, self.id)
  end
  
end
