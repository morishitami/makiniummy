class Question < ApplicationRecord
  with_options presence: true do
    validates :q1
    validates :q2
    validates :q3
    validates :q4
    validates :q5
    validates :q6
    validates :q7
    validates :q8
    validates :q9
    validates :q10
    validates :q11
    validates :q12
    validates :q13
    validates :q14
    validates :q15
    validates :q16
    validates :q17
    validates :q18
    validates :q19
    validates :q20
    validates :q21
    validates :q22
    validates :q23
    validates :q24
    validates :q25
    validates :q26
    validates :q27
    validates :q28
    # q29欠番
    validates :q30
    validates :q31
    validates :q32
    validates :q33

  end

  belongs_to :user
end
