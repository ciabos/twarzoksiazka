class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :friendships, foreign_key: :from_id
  has_many :users, through: :friendships
  has_many :inversed_friendships, :class_name => "Friendship", foreign_key: :to_id

end
