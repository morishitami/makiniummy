class ActorsController < ApplicationController

  def new
    @actor_nextprogram = ActorNextprogram.new
  end

  def create
    @actor_nextprogram = ActorNextprogram.new(actor_params)
    if @actor_nextprogram.valid?
      @actor_nextprogram.save
      @actor = Actor.where(user_id: current_user.id).pluck(:id)
      redirect_to user_actor_path(current_user.id, @actor)
    else
      render :new
    end
  end

  def show
    @actor = Actor.find(params[:id])
    @nextprogram = @actor.nextprogram
    @code = current_user.code
    @scode = @code.to_s
    @xlsx = Roo::Excelx.new("test-data.xlsx")
    begin
      @sheet = @xlsx.sheet(@scode)
      @last =@sheet.last_row - 4
    rescue
      @sheet = "none"
    end
  end

  private

  def actor_params
    params.require(:actor_nextprogram).permit(:comment, :image, :schedule, :show, :stage, :author).merge(user_id: current_user.id)
  end

end