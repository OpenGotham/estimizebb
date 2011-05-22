class WelcomeController < ApplicationController
  def index
    @recent_games = Game.past.limit(10)
    @upcoming_games = Game.upcoming.limit(10)
    # @games = Game.scoped.order("starts_at desc").limit(10)
  end
end
