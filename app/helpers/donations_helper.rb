module DonationsHelper

	def donation_category
		arr = []
		donation_items.map do |elem| 
			arr.push(elem[:item_category])
		end
	  arr.uniq()
	end

	def dontation_item
		arr = []
		donation_items.map do |elem| 
			arr.push(elem[:item_type])
		end
	  arr.uniq()
	end

 	def donation_items
		[
			{item_category: "Men's Clothing", item_type: "Shirt", value: [2.5...12]},
			{item_category: "Men's Clothing", item_type: "Slacks", value: [5...12]},
			{item_category: "Men's Clothing", item_type: "Sweater", value: [2.5...12]},
			{item_category: "Men's Clothing", item_type: "Overcoat", value: [15...60]},
			{item_category: "Men's Clothing", item_type: "Belt", value: [3...8]},
			{item_category: "Men's Clothing", item_type: "Tie", value: [15...60]},
			{item_category: "Men's Clothing", item_type: "Suit", value: [7.5..25]},
			{item_category: "Men's Clothing", item_type: "Jacket", value: [3.5...25]},
			{item_category: "Children's Clothing", item_type: "Blouse", value: [2...8]},
			{item_category: "Children's Clothing", item_type: "Shirt", value: [2...6]},
			{item_category: "Children's Clothing", item_type: "Dress", value: [3.5...12]},
			{item_category: "Children's Clothing", item_type: "Slacks", value: [2...8]},
			{item_category: "Children's Clothing", item_type: "Jeans", value: [3.5...12]},
			{item_category: "Children's Clothing", item_type: "Coat", value: [4.5...20]},
			{item_category: "Children's Clothing", item_type: "Sweater", value: [2.5...8]},
			{item_category: "Children's Clothing", item_type: "Coat", value: [2.5...8.75]},
			{item_category: "Women's Clothing", item_type: "Blouse", value: [2.5...12]},
			{item_category: "Women's Clothing", item_type: "Slacks", value: [3.5...12]},
			{item_category: "Women's Clothing", item_type: "Sweater", value: [2.5...12]},
			{item_category: "Women's Clothing", item_type: "Overcoat", value: [15...60]},
			{item_category: "Women's Clothing", item_type: "Belt", value: [3...8]},
			{item_category: "Women's Clothing", item_type: "Suit", value: [15...60]},
			{item_category: "Women's Clothing", item_type: "Jacket", value: [7.5...25]},
			{item_category: "Women's Clothing", item_type: "Shoes", value: [3.5...25]},
			{item_category: "Household Goods", item_type: "Towels", value: [1.5...4]},
			{item_category: "Household Goods", item_type: "Sheets & Pillows", value: [2...8]},
			{item_category: "Household Goods", item_type: "Blanket", value: [2.5...8]},
			{item_category: "Household Goods", item_type: "Bicycle", value: [15...65]},
			{item_category: "Household Goods", item_type: "Floor Lamp", value: [7.5...40]},
			{item_category: "Household Goods", item_type: "Sofa", value: [35..200]},
			{item_category: "Household Goods", item_type: "Throw Rug", value: [1.5...12]},
			{item_category: "Household Goods", item_type: "Color TV", value: [75...225]},
			{item_category: "Household Goods", item_type: "Kitchen Set", value: [35...170]},
			{item_category: "Household Goods", item_type: "Bedroom Set", value: [5...170]}
		]
	end



end
