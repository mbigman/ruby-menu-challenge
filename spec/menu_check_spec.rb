require_relative './spec_helper'

describe 'what_i_can_afford' do
  before(:each) do
    @menu = {
      :pizza => 3.50,
      :macaroni => 5.00,
      :curly_fries => 2.75,
      :donut => 1.00,
      :cuban_sandwich => 8.00,
      :hot_dog => 4.00,
      :popcorn => 7.00,
      :cotton_candy => 5.00,
      :corn => 6.00
    }
  end

  it 'returns an array with no items when passed a menu and a price that is too low' do
    expect(what_i_can_afford(@menu, 0.50)).to eq([])
  end

  it 'returns an array with items when passed a menu and a price that can pay for some items' do
    expect(what_i_can_afford(@menu, 3.50)).to eq([:pizza, :curly_fries, :donut])
  end

  it 'returns an array with all items when passed a menu and a price that can pay for all items' do
    expect(what_i_can_afford(@menu, 21.50)).to eq([:pizza, :macaroni, :curly_fries, :donut, :cuban_sandwich, :hot_dog, :popcorn, :cotton_candy, :corn])
  end


end