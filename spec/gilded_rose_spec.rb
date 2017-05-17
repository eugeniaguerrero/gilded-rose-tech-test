require 'gilded_rose'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end
  end

#### NORMAL ITEMS ####
  context 'normal item' do
    it 'before sell-in date' do
      items = [Item.new("normal", 10, 20)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 19
    end
    it 'before sell-in date with max quality' do
      items = [Item.new("normal", 10, 50)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 49
    end
    it 'on sell-in date' do
      items = [Item.new("normal", 0, 10)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 8
    end
    it 'on sell-in date near max quality' do
      items = [Item.new("normal", 0, 49)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 47
    end
    it 'after sell-in date' do
      items = [Item.new("normal", -1, 45)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 43
    end
    it 'after sell-in date with max quality' do
      items = [Item.new("normal", -2, 50)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 48
    end
  end

  #### AGED BRIE ####
    context 'Aged Brie' do
      it 'before sell-in date' do
        items = [Item.new("Aged Brie", 10, 0)]
        GildedRose.new(items).update_quality()
        expect(items[0].quality).to eq 1
      end
      it 'before sell-in date with max quality' do
        items = [Item.new("Aged Brie", 10, 50)]
        GildedRose.new(items).update_quality()
        expect(items[0].quality).to eq 50
      end
      it 'on sell-in date' do
        items = [Item.new("Aged Brie", 0, 2)]
        GildedRose.new(items).update_quality()
        expect(items[0].quality).to eq 4
      end
      it 'on sell-in date near max quality' do
        items = [Item.new("Aged Brie", 0, 49)]
        GildedRose.new(items).update_quality()
        expect(items[0].quality).to eq 50
      end
      it 'after sell-in date' do
        items = [Item.new("Aged Brie", -2, 0)]
        GildedRose.new(items).update_quality()
        expect(items[0].quality).to eq 2
      end
      it 'after sell-in date with max quality' do
        items = [Item.new("Aged Brie", -2, 50)]
        GildedRose.new(items).update_quality()
        expect(items[0].quality).to eq 50
      end
    end

  #### SULFURAS ####

  #### BACKSTAGE PASSES ####
  context 'Backstage passes' do
    it 'before sell-in date' do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 10, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 2
    end
    it 'before sell-in date with max quality' do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 10, 50)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 50
    end
    it 'on sell-in date' do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 2)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 0
    end
    it 'on sell-in date near max quality' do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 49)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 0
    end
    it 'after sell-in date' do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 50)]
      GildedRose.new(items).update_quality()
      expect(items[0].quality).to eq 0
    end
  end
  #### CONJURED ITEMS ####



end
