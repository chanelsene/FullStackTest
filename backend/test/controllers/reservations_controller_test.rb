require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get reservations_url, as: :json
    assert_response :success
  end

  test "should create reservation" do
    assert_difference("Reservation.count") do
      post reservations_url, params: { reservation: { owner_email: @reservation.owner_email, owner_name: @reservation.owner_name, owner_phone: @reservation.owner_phone, pet_age: @reservation.pet_age, pet_name: @reservation.pet_name, pet_type: @reservation.pet_type, reservation_date: @reservation.reservation_date } }, as: :json
    end

    assert_response :created
  end

  test "should show reservation" do
    get reservation_url(@reservation), as: :json
    assert_response :success
  end

  test "should update reservation" do
    patch reservation_url(@reservation), params: { reservation: { owner_email: @reservation.owner_email, owner_name: @reservation.owner_name, owner_phone: @reservation.owner_phone, pet_age: @reservation.pet_age, pet_name: @reservation.pet_name, pet_type: @reservation.pet_type, reservation_date: @reservation.reservation_date } }, as: :json
    assert_response :success
  end

  test "should destroy reservation" do
    assert_difference("Reservation.count", -1) do
      delete reservation_url(@reservation), as: :json
    end

    assert_response :no_content
  end
end