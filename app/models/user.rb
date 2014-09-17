class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me ,:user_name ,:role_id,:role
  has_many :roles 
  has_many :advertisements
  has_many :comments
  validates_presence_of  :user_name 

  # attr_accessible :title, :body
end
