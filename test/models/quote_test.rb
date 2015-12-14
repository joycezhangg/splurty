require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  
  test "unique_tag" do
    quote = Quote.create(:author =>"Henry David Thoreau", :saying => "This world is but a canvas to our imagination.")
    expected = "HDT#" + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end

end
