require 'gilded_rose'
require 'test/unit'

class TestUntitled < Test::Unit::TestCase

  def test_foo
    items = [Item.new("foo", 0, 0)]
    GildedRose.new(items).update_quality()
    assert_equal items[0].name, "foo"
  end

  def test_normal_item_before_sell_date
    items = [Item.new("normal", 10, 5)]
    GildedRose.new(items).update_quality()
    assert_equal 9, item.quality
    assert_equal 5, item.sell_in
  end

end
