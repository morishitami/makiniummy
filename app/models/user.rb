class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :code, format: {with: /\A\d{3}$|^\d{4}\z/, message: 'Please confirm "会員番号"'}
    validates :name
  end
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: ' Include both letters and numbers'}
        
end


