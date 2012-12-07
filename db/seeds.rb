Product.delete_all

n = 0

while n < 25
  Product.create(title: "#{Faker::Lorem.word} Salsa", description: "This is the most
    awesome salsa ever#{n}", price: 3.99)
  n = n + 1
end