require 'minitest/autorun'
require 'olaf/extensions/hash'

class TestServiceClient < MiniTest::Unit::TestCase
  def test_slice
    assert_equal({}, { :a => 1, :b => 2 }.slice(:c))
    assert_equal({ :a => 1 }, { :a => 1, :b => 2 }.slice(:a))
    assert_equal({ :a => 1 }, { :a => 1, :b => 2 }.slice(:a, :c))
    assert_equal({ :a => 1 }, { :a => 1, :b => 2 }.slice([:a, :c]))
    assert_equal({ :a => 1, :b => 2 }, { :a => 1, :b => 2 }.slice([:a, :b]))
  end
end