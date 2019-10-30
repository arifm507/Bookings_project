class Booking < ApplicationRecord
	has_many :tickets, dependent: :destroy
	belongs_to :route
	belongs_to :reservation	
	belongs_to :user

	def Booking.booking_create(reservation,route)
		
		pre_pnr = "TS#{Date.today.year}"
		count = 1
		users = User.all

		issue_date = Date.today

		users.each do |user|

		total_fare = rand(600..1000)
		pnr = pre_pnr + "#{reservation.travel_date.day}#{count+=1}"
		if reservation.travel_date = issue_date 
			issue_date += 1
		else
			issue_date = Date.today
		end


		booking = Booking.create!(pnr: pnr, total_fare: total_fare, passenger_name: user.name, email: user.email, origin: reservation.origin,
			 destination: reservation.destination, passenger_age: user.age,
		 	travel_date: reservation.travel_date, issue_date: issue_date, user_id: user.id,
		 	reservation_id: reservation.id, route_id: route.id)
		
		Ticket.ticket_create(booking,user)

		end
	end
end
