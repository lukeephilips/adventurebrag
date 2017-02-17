require 'rails_helper'

describe Place do
  it { should validate_presence_of :name }
  it {should have_many :adventures }
  it 'has a name' do
    place = FactoryGirl.create(:place)
  end
end
