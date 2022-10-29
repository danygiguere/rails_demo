# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'pokemons.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  p = Pokemon.new
  p.name = row['name']
  p.type1 = row['type1']
  p.type2 = row['type2']
  p.total = row['total']
  p.hp = row['hp']
  p.attack = row['attack']
  p.defense = row['defense']
  p.sp_atk = row['sp_atk']
  p.sp_def = row['sp_def']
  p.speed = row['speed']
  p.generation = row['generation']
  p.legendary = row['legendary']
  p.save
end

# 5.times do |i|
#     Pokemon.create(name: "Pokemon ##{i}")
# end