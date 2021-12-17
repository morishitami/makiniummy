class ActorsController < ApplicationController

  def new
    @actor_nextprogram = ActorNextprogram.new
  end

  def create
    @actor_nextprogram = ActorNextprogram.new(actor_params)
    if @actor_nextprogram.valid?
      @actor_nextprogram.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def actor_params
    params.require(:actor_nextprogram).permit(:comment, :image, :schedule, :show, :stage, :author).merge(user_id: current_user.id)
  end

end