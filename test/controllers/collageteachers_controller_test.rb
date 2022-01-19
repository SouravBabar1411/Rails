require "test_helper"

class CollageteachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collageteacher = collageteachers(:one)
  end

  test "should get index" do
    get collageteachers_url
    assert_response :success
  end

  test "should get new" do
    get new_collageteacher_url
    assert_response :success
  end

  test "should create collageteacher" do
    assert_difference("Collageteacher.count") do
      post collageteachers_url, params: { collageteacher: { adress: @collageteacher.adress, email: @collageteacher.email, fname: @collageteacher.fname, lname: @collageteacher.lname, mno: @collageteacher.mno, postalcode: @collageteacher.postalcode, qulification: @collageteacher.qulification, subjectName: @collageteacher.subjectName } }
    end

    assert_redirected_to collageteacher_url(Collageteacher.last)
  end

  test "should show collageteacher" do
    get collageteacher_url(@collageteacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_collageteacher_url(@collageteacher)
    assert_response :success
  end

  test "should update collageteacher" do
    patch collageteacher_url(@collageteacher), params: { collageteacher: { adress: @collageteacher.adress, email: @collageteacher.email, fname: @collageteacher.fname, lname: @collageteacher.lname, mno: @collageteacher.mno, postalcode: @collageteacher.postalcode, qulification: @collageteacher.qulification, subjectName: @collageteacher.subjectName } }
    assert_redirected_to collageteacher_url(@collageteacher)
  end

  test "should destroy collageteacher" do
    assert_difference("Collageteacher.count", -1) do
      delete collageteacher_url(@collageteacher)
    end

    assert_redirected_to collageteachers_url
  end
end
