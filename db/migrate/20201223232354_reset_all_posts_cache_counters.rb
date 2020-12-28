class ResetAllPostsCacheCounters < ActiveRecord::Migration[6.1]
  def up
    Post.all.each do |post|
      Post.reset_counters(post.id, :comments)   
    end

    Post.all.each do |post|
      Post.reset_counters(post.id, :boosts)   
    end
   end
end
