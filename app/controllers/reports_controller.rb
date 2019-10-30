class ReportsController < ApplicationController
  def index

     respond_to do |format|
       format.html
       format.csv { render text: Ticket.to_csv }
     end

  end

  def new

  end

  def report 

  	from_date = params['from_date']
  	to_date = params['to_date']  
    date_type = params['date_type']

    tickets = Ticket.joins(:user).select("pnr_number,passenger_name,sum(base_fare) as base_fare,sum(base_fare + base_fare*gst/100) as total_amount, gst,
        GROUP_CONCAT(tickets.seat_number) as seat_number, GROUP_CONCAT(IF(tickets.is_cancelled = true, tickets.seat_number, null))as cancelled_seat,sum(cancelled_fare) as cancelled_fare,
        sum(refund_amount) as refund_amount, SUM(net_fare)as net_fare, tickets.email, tickets.age,travel_date,issue_date,booking_id,user_id")

  	if(date_type == "issue_date")
  		 

      @bookings = tickets.where("issue_date BETWEEN ? AND ?", from_date, to_date).group(:booking_id).paginate(page: params[:page], per_page: 10)



       respond_to do |format|
          format.js { render :layout => false }
       end
     
    elsif(date_type == "travel_date")

       @bookings = tickets.where("travel_date BETWEEN ? AND ?", from_date, to_date).group(:booking_id).paginate(page: params[:page], per_page: 10)


      
        respond_to do |format|
          format.js { render :layout => false }
       end

    end
  end
end
