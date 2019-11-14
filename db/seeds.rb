100.times do
  ingredient = Ingredient.new(
    name: Faker::Games::Zelda.item
  )
  ingredient.save
end
