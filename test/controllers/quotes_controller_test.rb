require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "quote show page" do
	quote = Quote.create(:author =>"Henry David Thoreau", :saying => "This world is but a canvas to our imagination.")
  	get :show, :id => quote.id
  	assert_response :success
  end

  test "quote show page, not found" do
  	get :show, :id => 'OMG'
  	assert_response :not_found
  end
end
