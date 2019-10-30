class Ticket < ApplicationRecord
	belongs_to :booking
	belongs_to :reservation
	belongs_to :user

	# def  Ticket.to_csv
	# 	CSV.generate do |csv|
	# 		csv << column_names
	# 		all.each do |report|
	# 			csv << product.attributes.values_at(*column_names)

	# 	end
	# end

	def Ticket.ticket_create(booking,user)
		seats = ('A0'..'B9').to_a

		number_of_seats = rand(1..5)

		seat_nums = seats.sample(number_of_seats)

		seat_nums.each do |seat_number|
			cancelled_amount = 0
			refund_amount = 0
			cancelled_per = rand(10..50)
			gst = 5
			total_amount = booking.total_fare + ((booking.total_fare * gst) / 100)

			is_cancelled = [true,false].sample

			if(is_cancelled == true)
				cancelled_amount = (booking.total_fare * cancelled_per) / 100
				refund_amount = booking.total_fare - cancelled_amount	
				net_amount = net_amount - refund_amount
			end


			Ticket.create!(seat_number: seat_number, pnr_number: booking.pnr, passenger_name: user.name, email: user.email, age: user.age, base_fare: booking.total_fare,
				gst: gst, cancelled_fare: cancelled_amount, is_cancelled: is_cancelled, refund_amount: refund_amount, net_fare: net_amount, user_id: user.id,
				booking_id: booking.id, reservation_id: booking.reservation.id, travel_date: booking.travel_date, issue_date: booking.issue_date )

		end



	end
	

end
