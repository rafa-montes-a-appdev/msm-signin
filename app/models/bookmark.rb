# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :integer
#  user_id    :integer
#
class Bookmark < ApplicationRecord
  #validates(:movie_id,  { :presence => true} )
  validates(:movie_id, { :uniqueness => { :scope => [:user_id] } })
  belongs_to :user, :required => true
  belongs_to :movie, :required => true
end
