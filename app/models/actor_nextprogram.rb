class ActorNextprogram
  include ActiveModel::Model
  attr_accessor :comment, :user_id, :image, :schedule, :show, :stage, :author, :actor_id

  with_options presence: true do
    validates :user_id
    validates :image
    validates :schedule
    validates :show
    validates :stage
    validates :author
  end

  def save
    actor = Actor.create(comment: comment, user_id: user_id, image: image)
    Nextprogram.create(schedule: schedule, show: show, stage: stage, author: author, actor_id: actor.id)
  end
end