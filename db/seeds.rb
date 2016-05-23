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
Permission.create(name: "edit", role_id: 1)
Permission.create(name: "edit", role_id: 2)

PermissionUser.create(user_id: 1, permission_id: 1)
PermissionUser.create(user_id: 1, permission_id: 2)
PermissionUser.create(user_id: 2, permission_id: 3)
PermissionUser.create(user_id: 3, permission_id: 3)



