require "application_system_test_case"

class BooktitlesTest < ApplicationSystemTestCase
  setup do
    @booktitle = booktitles(:one)
  end

  test "visiting the index" do
    visit booktitles_url
    assert_selector "h1", text: "Booktitles"
  end

  test "should create booktitle" do
    visit booktitles_url
    click_on "New booktitle"

    fill_in "Content", with: @booktitle.content
    click_on "Create Booktitle"

    assert_text "Booktitle was successfully created"
    click_on "Back"
  end

  test "should update Booktitle" do
    visit booktitle_url(@booktitle)
    click_on "Edit this booktitle", match: :first

    fill_in "Content", with: @booktitle.content
    click_on "Update Booktitle"

    assert_text "Booktitle was successfully updated"
    click_on "Back"
  end

  test "should destroy Booktitle" do
    visit booktitle_url(@booktitle)
    click_on "Destroy this booktitle", match: :first

    assert_text "Booktitle was successfully destroyed"
  end
end
