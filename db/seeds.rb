# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Place.create([
    {name: 'Banff', description: "Banff is a resort town and one of Canada's most popular tourist destinations, known for its mountainous surroundings and hot springs. It is a destination for outdoor sports and features extensive hiking, biking, scrambling and skiing areas within the area. Sunshine Village, Ski Norquay and Lake Louise Mountain Resort are the three nearby ski resorts located within the national park.", category: "Mountains", region: "North America", image: "http://www.theconstantrambler.com/wp-content/uploads/2015/03/Adirondack-Chairs-in-Banff-Alberta.jpg"},
    {name: 'Zanzibar', description: "Zanzibar is a semi-autonomous part of Tanzania in East Africa. It is composed of the Zanzibar Archipelago in the Indian Ocean, 25–50 kilometres off the coast of the mainland, and consists of many small islands and two large ones: Unguja (the main island, referred to informally as Zanzibar) and Pemba. The capital is Zanzibar City, located on the island of Unguja. Its historic centre is Stone Town, which is a World Heritage Site.", category: "Beach", region: "Africa", image: "http://kazunion.com/administrator/components/com_touroperator/images/city/photo/249781.jpg?1"},
    {name: 'Tree City', description: "Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price.", category: "Forest", region: "North America", image: "https://68.media.tumblr.com/dc70bc19e193de84781be4c7367e2cfe/tumblr_nw5snqfqJl1sj2bw4o4_1280.jpg"},
        {name: 'San Francisco', description: "Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price.", category: "Urban", region: "North America", image: "http://img07.deviantart.net/a85d/i/2013/022/0/3/san_francisco_city_by_tt83x-d5seu41.jpg"},
          {name: 'Bighorn Mountain', description: "Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price.", category: "Moutains", region: "Europe", image: "https://41dcdfcd4dea0e5aba20-931851ca4d0d7cdafe33022cf8264a37.ssl.cf1.rackcdn.com/7365144_lee-canyon-ski--snowboard-resort-is-your_t3bbda6d2.jpg"}
  ])
