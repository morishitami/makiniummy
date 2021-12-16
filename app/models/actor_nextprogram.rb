class ActorNextprogram
  include ActiveModel::Model
  attr_accessor :time, :comment, :user_id, :schedule, :show, :stage, :author, :actor_id

  with_options presence: true do
    validates :time, numericality: true
    validates :user_id
    validates :schedule
    validates :show
    validates :stage
    validates :author
    validates :actor_id
  end

  def save
    actor = Actor.create(time: time, comment: comment, user_id: user_id)
    Address.create(schedule: schedule, show: show, stage: stage, author: author, actor_id: actor.id)
  end
end