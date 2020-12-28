class Comment < ApplicationRecord
  belongs_to :post, counter_cache: :comments_count
  belongs_to :owner, polymorphic: true
  has_many :boosts, as: :boostable

  def owner_id
    self.owner.id
  end

end
