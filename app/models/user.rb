class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :code, format: {with: /\A\d{3}$|^\d{4}\z/, message: "(会員番号) can't be blank"}
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: ' Include both letters and numbers'}
        

  has_one :actor
  has_one :question

end


