require "application_system_test_case"

class SellerspagesTest < ApplicationSystemTestCase
  setup do
    @sellerspage = sellerspages(:one)
  end

  test "visiting the index" do
    visit sellerspages_url
    assert_selector "h1", text: "Sellerspages"
  end

  test "should create sellerspage" do
    visit sellerspages_url
    click_on "New sellerspage"

    fill_in "Location", with: @sellerspage.location
    fill_in "Page photo", with: @sellerspage.page_photo
    fill_in "Phone number", with: @sellerspage.phone_number
    fill_in "Profile photo", with: @sellerspage.profile_photo
    fill_in "Sellers bio", with: @sellerspage.sellers_bio
    fill_in "Sellers name", with: @sellerspage.sellers_name
    click_on "Create Sellerspage"

    assert_text "Sellerspage was successfully created"
    click_on "Back"
  end

  test "should update Sellerspage" do
    visit sellerspage_url(@sellerspage)
    click_on "Edit this sellerspage", match: :first

    fill_in "Location", with: @sellerspage.location
    fill_in "Page photo", with: @sellerspage.page_photo
    fill_in "Phone number", with: @sellerspage.phone_number
    fill_in "Profile photo", with: @sellerspage.profile_photo
    fill_in "Sellers bio", with: @sellerspage.sellers_bio
    fill_in "Sellers name", with: @sellerspage.sellers_name
    click_on "Update Sellerspage"

    assert_text "Sellerspage was successfully updated"
    click_on "Back"
  end

  test "should destroy Sellerspage" do
    visit sellerspage_url(@sellerspage)
    click_on "Destroy this sellerspage", match: :first

    assert_text "Sellerspage was successfully destroyed"
  end
end
