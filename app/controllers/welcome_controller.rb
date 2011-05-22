class WelcomeController < ApplicationController
  def index
    @games = Game.upcoming
  end
end
