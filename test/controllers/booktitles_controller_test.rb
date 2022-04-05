require "test_helper"

class BooktitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booktitle = booktitles(:one)
  end

  test "should get index" do
    get booktitles_url
    assert_response :success
  end

  test "should get new" do
    get new_booktitle_url
    assert_response :success
  end

  test "should create booktitle" do
    assert_difference("Booktitle.count") do
      post booktitles_url, params: { booktitle: { content: @booktitle.content } }
    end

    assert_redirected_to booktitle_url(Booktitle.last)
  end

  test "should show booktitle" do
    get booktitle_url(@booktitle)
    assert_response :success
  end

  test "should get edit" do
    get edit_booktitle_url(@booktitle)
    assert_response :success
  end

  test "should update booktitle" do
    patch booktitle_url(@booktitle), params: { booktitle: { content: @booktitle.content } }
    assert_redirected_to booktitle_url(@booktitle)
  end

  test "should destroy booktitle" do
    assert_difference("Booktitle.count", -1) do
      delete booktitle_url(@booktitle)
    end

    assert_redirected_to booktitles_url
  end
end
