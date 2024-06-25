require "test_helper"

class LienHeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lien_he_index_url
    assert_response :success
  end
end
