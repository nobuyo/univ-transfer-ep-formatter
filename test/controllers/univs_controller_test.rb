require 'test_helper'

class UnivsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @univ = univs(:one)
  end

  test "should get index" do
    get univs_url
    assert_response :success
  end

  test "should get new" do
    get new_univ_url
    assert_response :success
  end

  test "should create univ" do
    assert_difference('Univ.count') do
      post univs_url, params: { univ: { admission_method: @univ.admission_method, dept: @univ.dept, exam_info: @univ.exam_info, interview_info: @univ.interview_info, name: @univ.name, result: @univ.result } }
    end

    assert_redirected_to univ_url(Univ.last)
  end

  test "should show univ" do
    get univ_url(@univ)
    assert_response :success
  end

  test "should get edit" do
    get edit_univ_url(@univ)
    assert_response :success
  end

  test "should update univ" do
    patch univ_url(@univ), params: { univ: { admission_method: @univ.admission_method, dept: @univ.dept, exam_info: @univ.exam_info, interview_info: @univ.interview_info, name: @univ.name, result: @univ.result } }
    assert_redirected_to univ_url(@univ)
  end

  test "should destroy univ" do
    assert_difference('Univ.count', -1) do
      delete univ_url(@univ)
    end

    assert_redirected_to univs_url
  end
end
