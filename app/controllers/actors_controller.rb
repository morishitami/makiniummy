class ActorsController < ApplicationController
  before_action :move_to_root, only: [:show, :create, :update]

  def new
    @actor = Actor.find_or_initialize_by(user_id: current_user.id)
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.valid?
      @actor.save
      redirect_to user_actor_path(current_user.id, @actor.id)
    else
      render :new
    end
  end

  def show
    @actor = Actor.find(params[:id])
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

  def update
    @actor = Actor.find(params[:id])
    if @actor.update(actor_params)
      redirect_to user_actor_path(current_user.id, @actor.id)
    else
      render :edit
    end
  end


  private

  def actor_params
    params.require(:actor).permit(:comment, :image).merge(user_id: current_user.id)
  end

  def move_to_root
    @actor = Actor.find(params[:id])
    unless current_user.id == @actor.user_id
      redirect_to root_path
    end
  end

end