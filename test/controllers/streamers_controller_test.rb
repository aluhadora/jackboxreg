require 'test_helper'

class StreamersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @streamer = streamers(:one)
  end

  test "should get index" do
    get streamers_url
    assert_response :success
  end

  test "should get new" do
    get new_streamer_url
    assert_response :success
  end

  test "should create streamer" do
    assert_difference('Streamer.count') do
      post streamers_url, params: { streamer: { code: @streamer.code, game_status: @streamer.game_status, name: @streamer.name, token: @streamer.token } }
    end

    assert_redirected_to streamer_url(Streamer.last)
  end

  test "should show streamer" do
    get streamer_url(@streamer)
    assert_response :success
  end

  test "should get edit" do
    get edit_streamer_url(@streamer)
    assert_response :success
  end

  test "should update streamer" do
    patch streamer_url(@streamer), params: { streamer: { code: @streamer.code, game_status: @streamer.game_status, name: @streamer.name, token: @streamer.token } }
    assert_redirected_to streamer_url(@streamer)
  end

  test "should destroy streamer" do
    assert_difference('Streamer.count', -1) do
      delete streamer_url(@streamer)
    end

    assert_redirected_to streamers_url
  end
end
