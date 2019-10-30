class Route < ApplicationRecord
	has_many :reservations, dependent: :destroy
	has_many :bookings, dependent: :destroy

	def Route.create_route
		service = "TS"
		city_names = City.pluck('city_name')
		for i in 1..4 do

			arr = city_names.sample(2)
			origin = arr[0]
			destination = arr[1]

			service_no = service + "00#{i}"

			number_seat = 35

			departure_time = "06:00".to_time + i.hour

			duration = (6..12).to_a.sample

			arrival_time = departure_time + duration.hour

			route_name = "#{origin[0...3]}-#{destination[0...3]}"

			route = Route.create(route_name: route_name, service_number: service_no, origin: origin,
			destination: destination, number_of_seats: number_seat, departure_time: departure_time, arrival_time: arrival_time, duration: duration) 
			
			Reservation.res_create(route)

		end
	end
end