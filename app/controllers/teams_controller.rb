Teamclass TeamsController < ApplicationController
  def index
    if params[:team_id]
      @teams = Team.find_by_team_id(params[:team_id])
    else
      @teams = Team.all
    end
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:team])

    if @team.save
      redirect_to :back
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update_attributes(params[:team])
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
  end
end