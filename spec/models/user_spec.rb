require 'rails_helper'


RSpec.describe User, type: :model do
  it {should have_many :adventures }
#   # user = FactoryGirl.create(:user)
#   # expect(user.email).to eq 'bob@test.com'
end
