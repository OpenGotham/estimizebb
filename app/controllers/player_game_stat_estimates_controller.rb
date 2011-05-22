class PlayerGameStatEstimatesController < ApplicationController
  # GET /player_game_stat_estimates
  # GET /player_game_stat_estimates.xml
  def index
    @player_game_stat_estimates = PlayerGameStatEstimate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @player_game_stat_estimates }
    end
  end

  # GET /player_game_stat_estimates/1
  # GET /player_game_stat_estimates/1.xml
  def show
    @player_game_stat_estimate = PlayerGameStatEstimate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @player_game_stat_estimate }
    end
  end

  # GET /player_game_stat_estimates/new
  # GET /player_game_stat_estimates/new.xml
  def new
    @player_game_stat_estimate = PlayerGameStatEstimate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @player_game_stat_estimate }
    end
  end

  # GET /player_game_stat_estimates/1/edit
  def edit
    @player_game_stat_estimate = PlayerGameStatEstimate.find(params[:id])
  end

  # POST /player_game_stat_estimates
  # POST /player_game_stat_estimates.xml
  def create
    @player_game_stat_estimate = PlayerGameStatEstimate.new(params[:player_game_stat_estimate])

    respond_to do |format|
      if @player_game_stat_estimate.save
        format.html { redirect_to(@player_game_stat_estimate, :notice => 'Player game stat estimate was successfully created.') }
        format.xml  { render :xml => @player_game_stat_estimate, :status => :created, :location => @player_game_stat_estimate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @player_game_stat_estimate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /player_game_stat_estimates/1
  # PUT /player_game_stat_estimates/1.xml
  def update
    @player_game_stat_estimate = PlayerGameStatEstimate.find(params[:id])

    respond_to do |format|
      if @player_game_stat_estimate.update_attributes(params[:player_game_stat_estimate])
        format.html { redirect_to(@player_game_stat_estimate, :notice => 'Player game stat estimate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @player_game_stat_estimate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /player_game_stat_estimates/1
  # DELETE /player_game_stat_estimates/1.xml
  def destroy
    @player_game_stat_estimate = PlayerGameStatEstimate.find(params[:id])
    @player_game_stat_estimate.destroy

    respond_to do |format|
      format.html { redirect_to(player_game_stat_estimates_url) }
      format.xml  { head :ok }
    end
  end
end
