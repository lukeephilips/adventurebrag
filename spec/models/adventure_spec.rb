require 'rails_helper'

describe Adventure do
  it { should validate_presence_of :name }
  it {should belong_to :place }
  it {should belong_to :user }

    it 'has a name' do
      adventure = FactoryGirl.create(:adventure)
    end
end
