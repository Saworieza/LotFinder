require "application_system_test_case"

class DamagesTest < ApplicationSystemTestCase
  setup do
    @damage = damages(:one)
  end

  test "visiting the index" do
    visit damages_url
    assert_selector "h1", text: "Damages"
  end

  test "creating a Damage" do
    visit damages_url
    click_on "New Damage"

    fill_in "Details", with: @damage.details
    fill_in "Primary", with: @damage.primary
    fill_in "Secondary", with: @damage.secondary
    fill_in "State", with: @damage.state
    fill_in "User", with: @damage.user_id
    fill_in "Value", with: @damage.value
    fill_in "Vehicle", with: @damage.vehicle_id
    click_on "Create Damage"

    assert_text "Damage was successfully created"
    click_on "Back"
  end

  test "updating a Damage" do
    visit damages_url
    click_on "Edit", match: :first

    fill_in "Details", with: @damage.details
    fill_in "Primary", with: @damage.primary
    fill_in "Secondary", with: @damage.secondary
    fill_in "State", with: @damage.state
    fill_in "User", with: @damage.user_id
    fill_in "Value", with: @damage.value
    fill_in "Vehicle", with: @damage.vehicle_id
    click_on "Update Damage"

    assert_text "Damage was successfully updated"
    click_on "Back"
  end

  test "destroying a Damage" do
    visit damages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Damage was successfully destroyed"
  end
end
