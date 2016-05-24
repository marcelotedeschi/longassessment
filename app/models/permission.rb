class Permission < ActiveRecord::Base
  belongs_to :role
  has_and_belongs_to_many :users

    #has_many :permission_users
  #has_many :users, :through => :permission_users


end
