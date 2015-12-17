require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  
  test "unique_tag" do
    quote = FactoryGirl.create(:quote, :author => "Mee")
    expected = "M#" + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end

  test "unique_tag_when_author_multiple_words" do
  	quote = FactoryGirl.create(:quote, :author => "Henry Thoreau")
  	expected = "HT#"
  	
end
