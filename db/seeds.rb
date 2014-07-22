# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   Mayor.create(name: 'Emanuel', city: cities.first)

Page.create(name: 'a')
Page.create(name: 'b')
Page.create(name: 'c')

Navigation.create(last_page_id: 1)
Navigation.create(last_page_id: 1)