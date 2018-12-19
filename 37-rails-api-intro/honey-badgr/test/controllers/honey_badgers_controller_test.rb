require 'test_helper'

class HoneyBadgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @honey_badger = honey_badgers(:one)
  end

  test "should get index" do
    get honey_badgers_url
    assert_response :success
  end

  test "should get new" do
    get new_honey_badger_url
    assert_response :success
  end

  test "should create honey_badger" do
    assert_difference('HoneyBadger.count') do
      post honey_badgers_url, params: { honey_badger: { name: @honey_badger.name, weight: @honey_badger.weight } }
    end

    assert_redirected_to honey_badger_url(HoneyBadger.last)
  end

  test "should show honey_badger" do
    get honey_badger_url(@honey_badger)
    assert_response :success
  end

  test "should get edit" do
    get edit_honey_badger_url(@honey_badger)
    assert_response :success
  end

  test "should update honey_badger" do
    patch honey_badger_url(@honey_badger), params: { honey_badger: { name: @honey_badger.name, weight: @honey_badger.weight } }
    assert_redirected_to honey_badger_url(@honey_badger)
  end

  test "should destroy honey_badger" do
    assert_difference('HoneyBadger.count', -1) do
      delete honey_badger_url(@honey_badger)
    end

    assert_redirected_to honey_badgers_url
  end
end
