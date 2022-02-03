require "application_system_test_case"

class AchivementsTest < ApplicationSystemTestCase
  setup do
    @achivement = achivements(:one)
  end

  test "visiting the index" do
    visit achivements_url
    assert_selector "h1", text: "Achivements"
  end

  test "creating a Achivement" do
    visit achivements_url
    click_on "New Achivement"

    fill_in "Man of series", with: @achivement.man_of_series
    fill_in "Person", with: @achivement.person
    click_on "Create Achivement"

    assert_text "Achivement was successfully created"
    click_on "Back"
  end

  test "updating a Achivement" do
    visit achivements_url
    click_on "Edit", match: :first

    fill_in "Man of series", with: @achivement.man_of_series
    fill_in "Person", with: @achivement.person
    click_on "Update Achivement"

    assert_text "Achivement was successfully updated"
    click_on "Back"
  end

  test "destroying a Achivement" do
    visit achivements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Achivement was successfully destroyed"
  end
end
