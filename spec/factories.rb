Factory.define :user do |user|
  user.name "Tony Weir"
  user.email "this_ex@example.com"
  user.password "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end