require 'gilded_rose'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end
  end

  context 'Aged Brie' do
    it 'increases in quality' do
      items = [Item.new("Aged Brie", 2, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 1
    end
    it 'decreases in sell in value after one day' do
      items = [Item.new("Aged Brie", 2, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].sell_in).to eq 1
    end
    it 'decreases in sell in value after two days' do
      items = [Item.new("Aged Brie", 2, 0)]
      GildedRose.new(items).update_quality()
      GildedRose.new(items).update_quality()
      expect(items[0].sell_in).to eq 0
    end
  end


end
