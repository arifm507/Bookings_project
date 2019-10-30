class Reservation < ApplicationRecord
	has_many :bookings, dependent: :destroy
	has_many :tickets, dependent: :destroy
	belongs_to :route

	def Reservation.res_create(route)
		
		number_of_seats = 35

		travel_date = Date.today
		for i in 1..10 do
			travel_date = travel_date + 1
			origin = route.origin
			destination = route.destination
			number_of_seats = route.number_of_seats
			departure_time = route.departure_time
			arrival_time = route.arrival_time
			duration = route.duration
		res = 	Reservation.create(travel_date: travel_date, number_of_seats: number_of_seats, origin: origin,
						destination: destination, departure_time: departure_time, arrival_time: arrival_time,
						duration: duration, route_id: route.id)
		
		Booking.booking_create(res,route)
		end
	end
end
