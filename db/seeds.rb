# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(name: "admin")
Role.create(name: "user")

User.create(name: "Marcelo", status: "logged", role_id: 1)
User.create(name: "Peter", status: "logged", role_id: 2)
User.create(name: "john", status: "logged", role_id: 2)


Permission.create(name: "create", role_id: 1)
Permission.create(name: "read", role_id: 1)
Permission.create(name: "update", role_id: 1)
Permission.create(name: "delete", role_id: 1)
Permission.create(name: "read", role_id: 2)

user = User.find(3)
p1 = Permission.find(3)
user.permissions << p1


user = User.find(3)
p1 = Permission.find(5)
user.permissions << p1
