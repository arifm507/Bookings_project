class City < ApplicationRecord

 def City.create_city
 	City.create([{city_name: 'Bangalore'},{ city_name: 'Chennai'},
 		{ city_name: 'Hyderabad'}, { city_name: 'Mysore'}, { city_name: 'Goa'}, ])
 end
end
