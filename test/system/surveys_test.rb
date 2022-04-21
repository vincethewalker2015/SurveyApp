require "application_system_test_case"

class SurveysTest < ApplicationSystemTestCase
  setup do
    @survey = surveys(:one)
  end

  test "visiting the index" do
    visit surveys_url
    assert_selector "h1", text: "Surveys"
  end

  test "creating a Survey" do
    visit surveys_url
    click_on "New Survey"

    fill_in "Date1", with: @survey.date1
    fill_in "Date2", with: @survey.date2
    fill_in "Date3", with: @survey.date3
    fill_in "Date4", with: @survey.date4
    fill_in "Date5", with: @survey.date5
    fill_in "Date6", with: @survey.date6
    fill_in "Date7", with: @survey.date7
    fill_in "Name", with: @survey.name
    click_on "Create Survey"

    assert_text "Survey was successfully created"
    click_on "Back"
  end

  test "updating a Survey" do
    visit surveys_url
    click_on "Edit", match: :first

    fill_in "Date1", with: @survey.date1
    fill_in "Date2", with: @survey.date2
    fill_in "Date3", with: @survey.date3
    fill_in "Date4", with: @survey.date4
    fill_in "Date5", with: @survey.date5
    fill_in "Date6", with: @survey.date6
    fill_in "Date7", with: @survey.date7
    fill_in "Name", with: @survey.name
    click_on "Update Survey"

    assert_text "Survey was successfully updated"
    click_on "Back"
  end

  test "destroying a Survey" do
    visit surveys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Survey was successfully destroyed"
  end
end
