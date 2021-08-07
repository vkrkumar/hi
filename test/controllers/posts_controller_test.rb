require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { address: @post.address, age: @post.age, bio: @post.bio, company: @post.company, country: @post.country, email: @post.email, gender: @post.gender, mobile: @post.mobile, name: @post.name, pin: @post.pin, skills: @post.skills, state: @post.state } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { address: @post.address, age: @post.age, bio: @post.bio, company: @post.company, country: @post.country, email: @post.email, gender: @post.gender, mobile: @post.mobile, name: @post.name, pin: @post.pin, skills: @post.skills, state: @post.state } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
