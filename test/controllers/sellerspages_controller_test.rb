require "test_helper"

class SellerspagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sellerspage = sellerspages(:one)
  end

  test "should get index" do
    get sellerspages_url
    assert_response :success
  end

  test "should get new" do
    get new_sellerspage_url
    assert_response :success
  end

  test "should create sellerspage" do
    assert_difference("Sellerspage.count") do
      post sellerspages_url, params: { sellerspage: { location: @sellerspage.location, page_photo: @sellerspage.page_photo, phone_number: @sellerspage.phone_number, profile_photo: @sellerspage.profile_photo, sellers_bio: @sellerspage.sellers_bio, sellers_name: @sellerspage.sellers_name } }
    end

    assert_redirected_to sellerspage_url(Sellerspage.last)
  end

  test "should show sellerspage" do
    get sellerspage_url(@sellerspage)
    assert_response :success
  end

  test "should get edit" do
    get edit_sellerspage_url(@sellerspage)
    assert_response :success
  end

  test "should update sellerspage" do
    patch sellerspage_url(@sellerspage), params: { sellerspage: { location: @sellerspage.location, page_photo: @sellerspage.page_photo, phone_number: @sellerspage.phone_number, profile_photo: @sellerspage.profile_photo, sellers_bio: @sellerspage.sellers_bio, sellers_name: @sellerspage.sellers_name } }
    assert_redirected_to sellerspage_url(@sellerspage)
  end

  test "should destroy sellerspage" do
    assert_difference("Sellerspage.count", -1) do
      delete sellerspage_url(@sellerspage)
    end

    assert_redirected_to sellerspages_url
  end
end
