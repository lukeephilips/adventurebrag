require 'rails_helper'
describe "the login path" do
  before() do
    FactoryGirl.create(:place)
  end
  it "logs in" do
    visit root_path
    click_link 'Log in'
    fill_in 'Email', :with => 'bob@test.com'
    fill_in 'Password', :with => 'abc123'
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'
  end
end
