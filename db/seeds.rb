# 100.times do
#   ingredient = Ingredient.new(
#     name: Faker::Games::Zelda.item
#   )
#   ingredient.save
# end

file = URI.open('https://res.cloudinary.com/bernerd/image/upload/v1573828401/99613429-magic-potion-on-blue-bottle-jar-with-magical-crystals-and-glowing-stars-inside-_dvhyar.jpg')
cocktail = Cocktail.new(name: 'First seed')
cocktail.photo.attach(io: file, filename: 'img.jpg', content_type: 'image/jpg')
cocktail.save
