# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@category1 = Category.create(name: 'Electronic')
@category1.sub_categories.create(name: 'mobile')
@category1.sub_categories.create(name: 'Tablet')
@category1.sub_categories.create(name: 'Accessory')

@category2 = Category.create(name: 'Bike')
@category2.sub_categories.create(name: 'Moter cycle')
@category2.sub_categories.create(name: 'cycle')
@category2.sub_categories.create(name: 'scootar')

@category3 = Category.create(name: 'Animals')
@category3.sub_categories.create(name: 'Dog')
@category3.sub_categories.create(name: 'Hourse')
@category3.sub_categories.create(name: 'Parrot')

@category4 = Category.create(name: 'Furniture')
@category4.sub_categories.create(name: 'chair')
@category4.sub_categories.create(name: 'Table')
@category4.sub_categories.create(name: 'sofa')



@category5 = Category.create(name: 'Fashion')
@category5.sub_categories.create(name: 'skin')
@category5.sub_categories.create(name: 'hair')
@category5.sub_categories.create(name: 'weeding')



@category6 = Category.create(name: 'Books')
@category6.sub_categories.create(name: 'Novel')

@category7 = Category.create(name: 'kids')
@category7.sub_categories.create(name: 'Toys')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?