require "application_system_test_case"

class ReservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test "visiting the index" do
    visit reservations_url
    assert_selector "h1", text: "Reservations"
  end

  test "creating a Reservation" do
    visit reservations_url
    click_on "New Reservation"

    fill_in "Arrival time", with: @reservation.arrival_time
    fill_in "Departure time", with: @reservation.departure_time
    fill_in "Destination", with: @reservation.destination
    fill_in "Duration", with: @reservation.duration
    fill_in "Number of seats", with: @reservation.number_of_seats
    fill_in "Origin", with: @reservation.origin
    fill_in "Travel date", with: @reservation.travel_date
    click_on "Create Reservation"

    assert_text "Reservation was successfully created"
    click_on "Back"
  end

  test "updating a Reservation" do
    visit reservations_url
    click_on "Edit", match: :first

    fill_in "Arrival time", with: @reservation.arrival_time
    fill_in "Departure time", with: @reservation.departure_time
    fill_in "Destination", with: @reservation.destination
    fill_in "Duration", with: @reservation.duration
    fill_in "Number of seats", with: @reservation.number_of_seats
    fill_in "Origin", with: @reservation.origin
    fill_in "Travel date", with: @reservation.travel_date
    click_on "Update Reservation"

    assert_text "Reservation was successfully updated"
    click_on "Back"
  end

  test "destroying a Reservation" do
    visit reservations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reservation was successfully destroyed"
  end
end
