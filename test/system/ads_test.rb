require "application_system_test_case"

class AdsTest < ApplicationSystemTestCase
  setup do
    @ad = ads(:one)
  end

  test "visiting the index" do
    visit ads_url
    assert_selector "h1", text: "Ads"
  end

  test "creating a Ad" do
    visit ads_url
    click_on "New Ad"

    fill_in "Address", with: @ad.address
    fill_in "Category", with: @ad.category_id
    fill_in "City", with: @ad.city
    check "Condition" if @ad.condition
    fill_in "Contact", with: @ad.contact
    fill_in "Detail", with: @ad.detail
    check "Published" if @ad.published
    fill_in "Sub category", with: @ad.sub_category_id
    fill_in "Title", with: @ad.title
    fill_in "User", with: @ad.user_id
    click_on "Create Ad"

    assert_text "Ad was successfully created"
    click_on "Back"
  end

  test "updating a Ad" do
    visit ads_url
    click_on "Edit", match: :first

    fill_in "Address", with: @ad.address
    fill_in "Category", with: @ad.category_id
    fill_in "City", with: @ad.city
    check "Condition" if @ad.condition
    fill_in "Contact", with: @ad.contact
    fill_in "Detail", with: @ad.detail
    check "Published" if @ad.published
    fill_in "Sub category", with: @ad.sub_category_id
    fill_in "Title", with: @ad.title
    fill_in "User", with: @ad.user_id
    click_on "Update Ad"

    assert_text "Ad was successfully updated"
    click_on "Back"
  end

  test "destroying a Ad" do
    visit ads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ad was successfully destroyed"
  end
end
