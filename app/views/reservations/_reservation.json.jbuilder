json.extract! reservation, :id, :travel_date, :number_of_seats, :origin, :destination, :departure_time, :arrival_time, :duration, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
