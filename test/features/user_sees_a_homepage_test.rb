require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_user_can_see_error_message
    #It should attempt to visit some page that does not exist,
    #assert that we get a 404 status code (indicating that the client has made an error),
    #and assert that the page has some sort of message indicating that the page doesn't exist.
    visit '/foo'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
