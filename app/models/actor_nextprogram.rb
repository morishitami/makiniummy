class ActorNextprogram
  include ActiveModel::Model
  attr_accessor :comment, :user_id, :schedule, :show, :stage, :author, :actor_id

  with_options presence: true do
    validates :user_id
    validates :image
    validates :schedule
    validates :show
    validates :stage
    validates :author
    validates :actor_id
  end

  def save
    actor = Actor.create(comment: comment, user_id: user_id)
    Address.create(schedule: schedule, show: show, stage: stage, author: author, actor_id: actor.id)
  end
end