class Author < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_one_attached :avatar
  has_many :posts, dependent: :destroy
  has_many :comments, as: :owner, dependent: :destroy
  extend FriendlyId
  friendly_id :name, use: :slugged

  def thumbnail
    return self.avatar.variant(resize: '50x50').processed
  end

  def profile
    return self.avatar.variant(resize:'128x128').processed
  end
  def comment_avatar
    return self.avatar.variant(resize:'50x50').processed
  end

  def has_avatar?
    return self.avatar.attached?
  end
end
