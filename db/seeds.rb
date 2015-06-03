# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Receipt.destroy_all
Donation.destroy_all

January_Donation = Receipt.create(title: "January Donation", user_id: 1)
February_Donation =	Receipt.create(title: "February Donation", user_id: 1)
March_Donation =	Receipt.create(title: "March Donation", user_id: 1)
April_Donation =	Receipt.create(title: "April Donation", user_id: 1)


Donation.create([
	{item_category: "Women's Clothing", item_type: "Shoes", value: 10.50, receipt_id: January_Donation},
	{item_category: "Men's Clothing", item_type: "Shirt", value: 1.50, receipt_id: January_Donation},
	{item_category: "Children's Clothing", item_type: "Dress", value: 9.50, receipt_id: February_Donation},
	{item_category: "Women's Clothing", item_type: "Shirt", value: 4.00, receipt_id: February_Donation},
	{item_category: "Men's Clothing", item_type: "Belt", value: 10.50, receipt_id: March_Donation},
	{item_category: "Children's Clothing", item_type: "Pants", value: 3.50, receipt_id: March_Donation},
	{item_category: "Women's Clothing", item_type: "Shoes", value: 20.50, receipt_id: April_Donation},
	{item_category: "Women's Clothing", item_type: "Jewelry", value: 30.00, receipt_id: April_Donation}
	])