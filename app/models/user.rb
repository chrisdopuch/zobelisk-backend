class User < ActiveRecord::Base
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :posts, dependent: :destroy

has_many :comments, dependent: :destroy

has_many :favorites, dependent: :destroy

acts_as_taggable

acts_as_taggable_on :tags

end