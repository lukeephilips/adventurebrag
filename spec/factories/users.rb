FactoryGirl.define do
  factory :user do
    email('bob@test.com')
    password('abc123')
    admin_role(true)
  end
end
if !User.exists?(email: 'bob@test.com')
  FactoryGirl.create(:user)
end
