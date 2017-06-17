# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Section.count == 0
    %w(breakfast dinner lunch drinks).each do |name|
        Section.create!(name: name)
    end
end

# Below items are generated by 'rails db:seed:dump'

FoodItem.create!([
  {name: "Com Lam", description: "Com Lam is quite popular in the Northwestern regions. The only ingredient of this food is nothing more than sticky rice and cooked by a very special tool: bamboo cylinder. The best way to enjoy this dish which eat with sesame salt.", price: "20000.0", section_id: 3, image_url: "/images/comlam.jpg", count_views: 2},
  {name: "Bun Cha", description: "Vietnamese Pork Meatball and Noodle Salad.", price: "10000.0", section_id: 3, image_url: "/images/buncha.jpg", count_views: 1},
  {name: "Nước Rau Má (Pennywort Juice)", description: "Pennywort is a member of the carrot and dill family. In reality this drink tastes more like cucumber water and is served in most restaurants throughout the country. This drink will keep you hydrated under the humid Vietnam weather while you are touring the country. Finding this drink is just the same as locating sugar cane juice street vendors. The best place to go is wherever there is a crowd, particularly schools, universities, markets, around the parks…", price: "3000.0", section_id: 4, image_url: "/images/nuocrauma.jpg", count_views: 2},
  {name: "Goi cuon", description: "Gỏi cuốn literally means \"salad rolls\" and should be distinguished from the fried rolls, which are also sometimes called spring rolls (or chả giò). The translucent cigar-shaped rolls are packed with greens, sometimes shrimp and/or pork, and herbs. They need a dunk in nước chấm of course. Almost every region in Vietnam has its own distinct spring roll but no matter where you are, the wrapping and rolling process is more or less the same.", price: "20000.0", section_id: 3, image_url: "/images/goicuon.jpg", count_views: 1},
  {name: "Com hen", description: "This is really good breakfast from Hue", price: "10000.0", section_id: 1, image_url: "/images/comhen.jpg", count_views: 1},
  {name: "Bun Bo", description: "Delicious food from Hue city", price: "22000.0", section_id: 1, image_url: "/images/bunbo.jpg", count_views: 1},
  {name: "Pho", description: "Delicious Hanoi Food", price: "32000.0", section_id: 1, image_url: "/images/pho.jpg", count_views: 1},
  {name: "Banh Cuon", description: "The bánh family includes a number of steamed rice cake-like dishes. So soft and delicate, my favorite was this bánh cuốn straight from the steamer. Our Intrepid Travel guide took us to a third-generation bánh cuốn master in Hanoi who mesmerized us with her skills. She ladled each scoop of the rice flour-based batter onto the steamer, covering it with a lid for a matter of seconds, then carefully transferred the gossamer-thin sheets with a bamboo stick onto a tray to be filled with minced mushrooms and pork. Each bite is topped with deep-fried shallot bits and must be dipped into that nước chấm sauce.", price: "22000.0", section_id: 3, image_url: "/images/banhcuon.jpg", count_views: 2},
  {name: "Ca kho to", description: "Clay pots are kind of like the Asian cousin of the Dutch oven. The thick clay walls retain heat and moisture, helping to soften and caramelize meats when braised. In this dish, the fish develops a sweet-savory gooeyness from the sugar and fish sauce over the course of the long braise. \"This reminds me of my grandma,\" said my Vietnamese friend who grew up eating this classic comfort food.", price: "32000.0", section_id: 1, image_url: "/images/cakhoto.jpg", count_views: 1},
  {name: "Lau Bo", description: "This is a beef hotspot!", price: "120000.0", section_id: 2, image_url: "/images/laubo.jpg", count_views: 0},
  {name: "Com chien", description: "This is Mixed Fried rice ", price: "10000.0", section_id: 2, image_url: "/images/comchien.jpg", count_views: 0},
  {name: "Nước Mía (Sugar Cane Juice)", description: "It is a famous drink sold on every street of Vietnam. This yummy treat is freshly squeezed using an electric squashing machine. Surprisingly it is not as sweet as you would expect it to be. The drink is usually served with Calamansi, a tiny sour lime found naturally in Southeast Asia. Sugar cane juice is not only delicious but also rich in electrolytes and antioxidants to fight dehydration. You will find sugar cane juice vendors everywhere, advertising their goods openly on the streets. They usually have buckets of sugar cane stalks displayed in the front of their stalls. The best sugar cane juice can be found on Cách Mạng Tháng Tám Street in Tân Bình District and along this way to District 3 in Saigon. An easy way for you to find sugar cane juice vendors is if you notice where there are schools, universities, markets or parks, etc., sugarcane juice vendors never are far away!", price: "2000.0", section_id: 4, image_url: "/images/nuocmia.jpg", count_views: 2},
  {name: "Ga nuong mat ong", description: "", price: "200000.0", section_id: 2, image_url: "/images/galuoc.jpg", count_views: 9},
  {name: "Dừa Tươi (Fresh Coconut)", description: "Coconut water has always been a popular drink in Vietnam and the rest of Southeast Asia. In Vietnam you will not see coconut milk packaged like the ones you see in grocery stores. Coconut water is served straight from a coconut with the vendors chopping the fruit once you order it. Generally smaller coconuts tend to be sweeter than larger ones. You can find the best coconut juice vendors which are near Hoàng Văn Thụ Park and on the street with the same name in Tân Bình district and near Tân Sơn Nhất international airport.", price: "12000.0", section_id: 4, image_url: "/images/duatuoi.jpg", count_views: 11},
  {name: "Bo Cuon La Lot", description: "This main ingredient is made from meat and pomelo leafs and the process to make it is very simple: a high- quality bellies meat sliced into a small piece as big as pinkie, then spiced with fish sauce and onion. After that, washed pomelo leafs are sliced into half and each half would be used to roll a piece of sliced meat and then clip by bamboo sticks", price: "30000.0", section_id: 3, image_url: "/images/bolalot.jpg", count_views: 1},
  {name: "Com Tam", description: "Great dinner from the South of VN", price: "30000.0", section_id: 2, image_url: "/images/comtam.jpg", count_views: 1},
  {name: "Banh My", description: "This is one of famous food of VN", price: "12000.0", section_id: 1, image_url: "/images/banhmy.jpg", count_views: 3},
  {name: "My Quang", description: "This is the special food from Quang Nam", price: "30000.0", section_id: 2, image_url: "/images/myquang.jpg", count_views: 42},
  {name: "Sâm bổ lượng (Cold Sweet Soup)", description: "Sâm bổ lượng is originally a Cantonese dish but it has become so famous in Vietnam, using the same original ingredients that are also readily available in the country. The recipe may vary from city to city, but most often it contains dried longans, Job’s tears, thinly sliced seaweeds, water, sugar, and crushed iced. As this drink originally comes from China, obviously the best place to find it is the Chinese district of Saigon which is located in District 5 on Châu Văn Liêm street or Nguyễn Trãi street, and some street vendors on Hồ Thị Kỷ street and Sư Vạn Hạnh street in District 10.", price: "10000.0", section_id: 4, image_url: "/images/samboluong.jpg", count_views: 2},
  {name: "Nước Sâm (Ginseng Tea)", description: "Ginseng tea in Vietnam is one of the most loved drinks. It has a sweet and nutty taste, and is usually served to compliment rice dishes. Nước Sâm usually consists of locally found ingredients like nettle leaves, grass roots, sugar cane, and corn silk. Some variations can also include other local ingredients such as dried longan, roasted water chestnuts, and spiky cilantro. You may find many street vendors with metal stalls wherever you go. However a shop located at the corner of Tạ Uyên – Dương Tử Giang Streets (district 11) has been famous for this drink for more than 20 years.", price: "3000.0", section_id: 4, image_url: "/images/nuocsam.jpg", count_views: 1}
])

Comment.create!([
  {commenter: "Tam Chau", body: "Good food", star: 4, food_item_id: 6},
  {commenter: "cao", body: "Nice", star: 4, food_item_id: 6},
  {commenter: "Tien", body: "Really Good", star: 5, food_item_id: 6},
  {commenter: "tam chau", body: "nice", star: 4, food_item_id: 6},
  {commenter: "Tam", body: "Really Really good", star: 5, food_item_id: 13},
  {commenter: "tamchau", body: "I really like it", star: 4, food_item_id: 20},
  {commenter: "tien", body: "Good drink", star: 3, food_item_id: 20}
])
