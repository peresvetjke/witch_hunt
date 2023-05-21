require "application_system_test_case"

class AliasesTest < ApplicationSystemTestCase
  setup do
    @alias = aliases(:one)
  end

  test "visiting the index" do
    visit aliases_url
    assert_selector "h1", text: "Aliases"
  end

  test "should create alias" do
    visit aliases_url
    click_on "New alias"

    fill_in "Entity", with: @alias.entity_id
    fill_in "Title", with: @alias.title
    click_on "Create Alias"

    assert_text "Alias was successfully created"
    click_on "Back"
  end

  test "should update Alias" do
    visit alias_url(@alias)
    click_on "Edit this alias", match: :first

    fill_in "Entity", with: @alias.entity_id
    fill_in "Title", with: @alias.title
    click_on "Update Alias"

    assert_text "Alias was successfully updated"
    click_on "Back"
  end

  test "should destroy Alias" do
    visit alias_url(@alias)
    click_on "Destroy this alias", match: :first

    assert_text "Alias was successfully destroyed"
  end
end
