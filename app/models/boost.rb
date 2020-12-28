class Boost < ApplicationRecord
  belongs_to :user
  belongs_to :boostable, polymorphic: true, counter_cache: :boosts_count
end