require 'rails_helper'

describe "the create story path" do
  it "logs in and makes a story" do
    visit root_path
    click_link 'Log in'
    fill_in 'Email', :with => 'bob@test.com'
    fill_in 'Password', :with => 'abc123'
    click_button 'Log in'

    click_link 'AdventureBrags'

    click_link 'Add a new place'
    expect(page).to have_content 'Name'
    fill_in 'Name', :with => 'narnia'
    click_button 'Create Place'
    expect(page).to have_content 'You added narnia'
  end
  it "logs in and doesnt make a story" do
    visit root_path
    click_link 'Log in'
    fill_in 'Email', :with => 'bob@test.com'
    fill_in 'Password', :with => 'abc123'
    click_button 'Log in'

    click_link 'AdventureBrags'

    click_link 'Add a new place'
    expect(page).to have_content 'Name'
    fill_in 'Name', :with => ''
    click_button 'Create Place'
    expect(page).to have_content "Name can't be blank"
  end
end
