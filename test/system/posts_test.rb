require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Address", with: @post.address
    fill_in "Age", with: @post.age
    fill_in "Bio", with: @post.bio
    fill_in "Company", with: @post.company
    fill_in "Country", with: @post.country
    fill_in "Email", with: @post.email
    fill_in "Gender", with: @post.gender
    fill_in "Mobile", with: @post.mobile
    fill_in "Name", with: @post.name
    fill_in "Pin", with: @post.pin
    fill_in "Skills", with: @post.skills
    fill_in "State", with: @post.state
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Address", with: @post.address
    fill_in "Age", with: @post.age
    fill_in "Bio", with: @post.bio
    fill_in "Company", with: @post.company
    fill_in "Country", with: @post.country
    fill_in "Email", with: @post.email
    fill_in "Gender", with: @post.gender
    fill_in "Mobile", with: @post.mobile
    fill_in "Name", with: @post.name
    fill_in "Pin", with: @post.pin
    fill_in "Skills", with: @post.skills
    fill_in "State", with: @post.state
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
