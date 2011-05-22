class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])

    # respond_to do |format|
    #      format.html # show.html.erb
    #      format.xml  { render :xml => @game }
    #    end
  end
  
  
end