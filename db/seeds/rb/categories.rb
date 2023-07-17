# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "categories.rb"))'

puts 'Creando categorias...'

while Category.count < 10
  unless Category.pluck(:name).include?(Faker::Game.genre)
    unique_name = Faker::Game.genre
    Category.create(name: unique_name)
  end
end
