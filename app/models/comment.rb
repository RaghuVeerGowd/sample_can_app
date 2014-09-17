class Comment < ActiveRecord::Base
  attr_accessible :ad_id, :comment_author_name, :comment_description, :user_id,:advertisement_id
  belongs_to :advertisement
  belongs_to :user
  validates_presence_of :comment_author_name,:comment_description

end
