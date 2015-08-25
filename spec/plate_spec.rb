require 'spec_helper'

describe Plate do
  it 'returns 0 when two plates are equal' do
    Plate.places_between('AAA000', 'AAA000').must_equal 0
  end

  it 'returns 1 from AAA000 to AAA001' do
    Plate.places_between('AAA000', 'AAA001').must_equal 1
  end

  it 'returns 2 from AAA000 to AAA002' do
    Plate.places_between('AAA000', 'AAA002').must_equal 2
  end

  it 'returns 3 from AAA000 to AAA003' do
    Plate.places_between('AAA000', 'AAA003').must_equal 3
  end

  it 'returns 3 from AAA000 to AAA004' do
    Plate.places_between('AAA000', 'AAA004').must_equal 4
  end

  it 'returns 1000 from AAA000 to AAB000' do
    Plate.places_between('AAA000', 'AAB000').must_equal 1000
  end

  it 'returns 52000 from AAA000 to ACA000' do
    Plate.places_between('AAA000', 'ACA000').must_equal 52000
  end

  it 'returns 78000 from AAA000 to ADA000' do
    Plate.places_between('AAA000', 'ADA000').must_equal 78000
  end

  it 'returns 25000 from AAA000 to AAZ000' do
    Plate.places_between('AAA000', 'AAZ000').must_equal 25000
  end

  it 'returns 2000 from AAA000 to AAC000' do
    Plate.places_between('AAA000', 'AAC000').must_equal 2000
  end

  it 'returns 1352000 from AAA000 to CAA000' do
    Plate.places_between('AAA000', 'CAA000').must_equal 1352000
  end

  it 'returns 2028000 from AAA000 to DAA000' do
    Plate.places_between('AAA000', 'DAA000').must_equal 2028000
  end

  it 'returns 0 from AAA000 to AAA000' do
    Plate.places_between('AAA000', 'AAA000').must_equal 0
  end

  it 'returns 2054000 from AAA000 to DBA000' do
    Plate.places_between('AAA000', 'DBA000').must_equal 2054000
  end

  it 'returns 3 from AAA000 to AAA003' do
    Plate.places_between('AAA000', 'AAA003').must_equal 3
  end

  it 'returns 26003 from AAA000 to ABA003' do
    Plate.places_between('AAA000', 'ABA003').must_equal 26003
  end

  it 'returns 17575999 from AAA000 to ZZZ999' do
    Plate.places_between('AAA000', 'ZZZ999').must_equal 17575999
  end

  it 'returns 0 from AAA009 to AAA003' do
    Plate.places_between('AAA009', 'AAA003').must_equal 0
  end
end
