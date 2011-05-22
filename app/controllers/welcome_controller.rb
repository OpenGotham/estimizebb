class WelcomeController < ApplicationController
  def index
    # @games = Game.upcoming
    @games = Game.scoped.order("starts_at desc").limit(10)
  end
end
