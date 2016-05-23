class User < ActiveRecord::Base

  belongs_to :role
  #has_and_belongs_to_many :permissions
  has_many :permission_users
  has_many :permissions, :through => :permission_users
end
