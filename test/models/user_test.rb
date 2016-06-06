require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
    test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?(:remember, '')
  end
  
    test "associated microposts should be destroyed" do
      @user.save
      @user.microposts.create!(content: "Lorem ipsum")
      assert_difference 'Micropost.count', -1 do
      @user.destroy
    end
      
    test "should follow and unfollow a user" do
      vishwa = users(:vishwa)
      archer  = users(:archer)
      assert_not vishwa.following?(archer)
      vishwa.follow(archer)
      assert vishwa.following?(archer)
      assert archer.followers.include?(vishwa)
      vishwa.unfollow(archer)
      assert_not vishwa.following?(archer)
    end
  end

  test "feed should have the right posts" do
    vishwa = users(:vishwa)
    archer  = users(:archer)
    lana    = users(:lana)
    # Posts from followed user
    lana.microposts.each do |post_following|
      assert vishwa.feed.include?(post_following)
    end
    # Posts from self
    vishwa.microposts.each do |post_self|
      assert vishwa.feed.include?(post_self)
    end
    # Posts from unfollowed user
    archer.microposts.each do |post_unfollowed|
    assert_not vishwa.feed.include?(post_unfollowed)
    end
  end
end