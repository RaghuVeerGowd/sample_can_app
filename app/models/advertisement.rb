class Advertisement < ActiveRecord::Base
  attr_accessible :ad_author_name, :ad_discription, :ad_name, :user_id
  has_many :comments
   

  belongs_to :user
  validates_presence_of :ad_author_name , :ad_name ,:ad_discription
end
