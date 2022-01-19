require "application_system_test_case"

class CollageteachersTest < ApplicationSystemTestCase
  setup do
    @collageteacher = collageteachers(:one)
  end

  test "visiting the index" do
    visit collageteachers_url
    assert_selector "h1", text: "Collageteachers"
  end

  test "should create collageteacher" do
    visit collageteachers_url
    click_on "New collageteacher"

    fill_in "Adress", with: @collageteacher.adress
    fill_in "Email", with: @collageteacher.email
    fill_in "Fname", with: @collageteacher.fname
    fill_in "Lname", with: @collageteacher.lname
    fill_in "Mno", with: @collageteacher.mno
    fill_in "Postalcode", with: @collageteacher.postalcode
    fill_in "Qulification", with: @collageteacher.qulification
    fill_in "Subjectname", with: @collageteacher.subjectName
    click_on "Create Collageteacher"

    assert_text "Collageteacher was successfully created"
    click_on "Back"
  end

  test "should update Collageteacher" do
    visit collageteacher_url(@collageteacher)
    click_on "Edit this collageteacher", match: :first

    fill_in "Adress", with: @collageteacher.adress
    fill_in "Email", with: @collageteacher.email
    fill_in "Fname", with: @collageteacher.fname
    fill_in "Lname", with: @collageteacher.lname
    fill_in "Mno", with: @collageteacher.mno
    fill_in "Postalcode", with: @collageteacher.postalcode
    fill_in "Qulification", with: @collageteacher.qulification
    fill_in "Subjectname", with: @collageteacher.subjectName
    click_on "Update Collageteacher"

    assert_text "Collageteacher was successfully updated"
    click_on "Back"
  end

  test "should destroy Collageteacher" do
    visit collageteacher_url(@collageteacher)
    click_on "Destroy this collageteacher", match: :first

    assert_text "Collageteacher was successfully destroyed"
  end
end
