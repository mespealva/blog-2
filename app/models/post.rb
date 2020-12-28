class Post < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy

  has_many :post_tag, dependent: :destroy
  has_many :tags, through: :post_tag, dependent: :destroy

  has_many :boosts, as: :boostable

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_rich_text :content
  has_many_attached :images
  has_one_attached :main

  scope :published, -> do
    where(published: true)
  end

  scope :most_recently_published, -> do
    order(published_date: :desc)
  end

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name).first_or_create!
    end
  end

  def all_tags
    tags.map(&:name).join(", ")
  end

  def ordered_comments
    self.comments.order('created_at DESC')
  end

  def author_has_avatar?
    self.author.has_avatar?
  end
end
