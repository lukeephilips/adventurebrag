# require 'rails_helper'
#
# describe "the create adventure path" do
#   it "logs in and makes a adventure" do
#     visit root_path
#     click_link 'Log in'
#     fill_in 'Email', :with => 'bob@test.com'
#     fill_in 'Password', :with => 'abc123'
#     click_button 'Log in'
#
#     click_link 'AdventureBrags'
#
#     click_on 'Add a new place'
#     expect(page).to have_content 'Name'
#     fill_in 'Name', :with => 'narnia'
#     click_button 'Create Place'
#     expect(page).to have_content 'You added narnia'
#   end
#   it "adds a new adventure" do
#     visit place_path(FactoryGirl.create(:place))
#     expect(page).to have_content "Add adventure"
#   end
# end
