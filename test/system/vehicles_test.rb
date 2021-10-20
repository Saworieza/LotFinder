require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "creating a Vehicle" do
    visit vehicles_url
    click_on "New Vehicle"

    fill_in "Vin", with: @vehicle.VIN
    fill_in "Body type", with: @vehicle.body_type
    fill_in "Brand", with: @vehicle.brand_id
    fill_in "Color", with: @vehicle.color
    fill_in "Engine type", with: @vehicle.engine_type
    fill_in "Mileage", with: @vehicle.mileage
    fill_in "Name", with: @vehicle.name
    fill_in "Transmission", with: @vehicle.transmission
    fill_in "User", with: @vehicle.user_id
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle" do
    visit vehicles_url
    click_on "Edit", match: :first

    fill_in "Vin", with: @vehicle.VIN
    fill_in "Body type", with: @vehicle.body_type
    fill_in "Brand", with: @vehicle.brand_id
    fill_in "Color", with: @vehicle.color
    fill_in "Engine type", with: @vehicle.engine_type
    fill_in "Mileage", with: @vehicle.mileage
    fill_in "Name", with: @vehicle.name
    fill_in "Transmission", with: @vehicle.transmission
    fill_in "User", with: @vehicle.user_id
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle" do
    visit vehicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle was successfully destroyed"
  end
end
