class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    
    @upcoming_estimates = @user.player_game_stat_estimates.upcoming.paginate
    @past_estimates = @user.player_game_stat_estimates.past.paginate

    # respond_to do |format|
    #      format.html # show.html.erb
    #      format.xml  { render :xml => @game }
    #    end
  end
  
  
end