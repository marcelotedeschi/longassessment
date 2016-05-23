class Role < ActiveRecord::Base
  has_many :users
  has_many :permissions
end
