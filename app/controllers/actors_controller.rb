class ActorsController < ApplicationController
  def index
  end

  def new
    @actor_nextprogram = ActorNextprogram.new
  end
end
