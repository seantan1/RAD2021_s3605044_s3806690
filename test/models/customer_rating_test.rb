require 'test_helper'

class CustomerRatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "valid if score is between 0 and 4" do
    rating = Rating.new(score: 10)
    assert rating.valid?
    assert_empty rating.errors[:rating]
  end
  
end
