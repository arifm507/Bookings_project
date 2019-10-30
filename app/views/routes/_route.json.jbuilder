json.extract! route, :id, :travel_date, :number_of_seats, :origin, :destination, :departure_time, :arrival_time, :duration, :created_at, :updated_at
json.url route_url(route, format: :json)
