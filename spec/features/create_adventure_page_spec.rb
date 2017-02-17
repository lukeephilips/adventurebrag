require 'rails_helper'

describe "the create adventure path" do
  before() do
    FactoryGirl.create(:place)
  end
  it "logs in and makes a adventure" do
    visit root_path
    click_link 'Log in'
    fill_in 'Email', :with => 'bob@test.com'
    fill_in 'Password', :with => 'abc123'
    click_button 'Log in'

    click_link 'random place'
    expect(page).to have_content 'Add an adventure'
    click_link 'Add an adventure'
    fill_in 'Name', :with => 'some ish'
    click_button 'Create Adventure'
    expect(page).to have_content "You added some ish"
  end
  it "edits a adventure" do
    click_link 'random place'
    expect(page).to have_content 'Add an adventure'
    click_link 'Add an adventure'
    fill_in 'Name', :with => 'some ish'
    click_button 'Create Adventure'
    expect(page).to have_content "You added some ish"
  end
end
