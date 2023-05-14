# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Ingredient.create(
  [{ measurement: "3 Cans",
     name: "Tuna",
     recipe_id: 4,
     is_kosher: true }]
)

KosherSubstitute.create(
  [{ name: "Tuna",
     ingredient_id: 7,
     brand: "NO SPECIFIC BRAND",
     url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fjpg.houseofkosher.com%2Fcontent%2Fimages%2Fthumbs%2F0139740_raskins-chunk-light-tuna-in-water.jpeg&tbnid=vyoSR2rdl-hRWM&vet=12ahUKEwir3bSbvvX-AhX7GFkFHVlvDZYQMygAegQIARA9..i&imgrefurl=https%3A%2F%2Fwww.houseofkosher.com%2F%23!%2Fhb%2Fc%2F387-0%2Fc%2F388-387%2Fc%2F524-388%2Fm%2F000000%2Fr%2F99401%2Fhe%2FPhiladelphia%2Fkosher-tuna%2Fkosher-canned-food%2Fkosher-grocery%2F&docid=QlVKnlTxR1YabM&w=1000&h=1000&q=raskin%27s%20tuna%20can&hl=en&ved=2ahUKEwir3bSbvvX-AhX7GFkFHVlvDZYQMygAegQIARA9" }]
)
