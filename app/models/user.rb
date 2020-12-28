class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :omniauthable

  has_one_attached :profile_pic
  has_many :comments, as: :owner, dependent: :destroy

  def comment_avatar
    return self.profile_pic.variant(resize:'50x50').processed
  end

  def has_avatar?
    return self.profile_pic.attached?
  end
end
