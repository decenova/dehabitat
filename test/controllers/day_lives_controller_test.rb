require 'test_helper'

class DayLivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @day_life = day_lives(:one)
  end

  test "should get index" do
    get day_lives_url
    assert_response :success
  end

  test "should get new" do
    get new_day_life_url
    assert_response :success
  end

  test "should create day_life" do
    assert_difference('DayLife.count') do
      post day_lives_url, params: { day_life: { day: @day_life.day, diary: @day_life.diary, goal: @day_life.goal, status: @day_life.status } }
    end

    assert_redirected_to day_life_url(DayLife.last)
  end

  test "should show day_life" do
    get day_life_url(@day_life)
    assert_response :success
  end

  test "should get edit" do
    get edit_day_life_url(@day_life)
    assert_response :success
  end

  test "should update day_life" do
    patch day_life_url(@day_life), params: { day_life: { day: @day_life.day, diary: @day_life.diary, goal: @day_life.goal, status: @day_life.status } }
    assert_redirected_to day_life_url(@day_life)
  end

  test "should destroy day_life" do
    assert_difference('DayLife.count', -1) do
      delete day_life_url(@day_life)
    end

    assert_redirected_to day_lives_url
  end
end
