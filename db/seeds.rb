# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require_relative '../app/models/category'

Category.new(name: 'Community').save
Category.new(name: 'Buy/Sell').save
Category.new(name: 'Jobs').save
Category.new(name: 'Services').save
Category.new(name: 'Housing').save
Category.new(name: 'Discussion/Forum').save
Category.new(name: 'Dating').save