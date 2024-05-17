# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  has_many(:posts)
  #def active_posts
  #  board_posts = Post.where(:board_id => self.id)
  #  active_posts = .new
  #  board_posts.each do |post|
  #    if post.expires_on > Date.today
  #      active_posts.push(post)
  #    end
  #  end
  #  return active_posts
  #end

  validates(:name, {:presence => true})

end
