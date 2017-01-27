Given(/^I visit "(.*?)"$/) do |path|
  visit path
end

Then(/^I should see the login screen$/) do
  expect(page).to have_content('Login')
  expect(page).to have_content('Password')
end

Given(/^I am an administrator$/) do
  repository.administrator
end

Given(/^I login as an admin user$/) do
  admin_login(my.user)
end

When(/^I logout$/) do
  logout
end

Then(/^I should see the dashboard$/) do
  expect(page).to have_content('Protected Dashboard')
end

Then(/^I should see my email address in the navbar$/) do
  expect(page).to have_css('.navbar', text: my.user.email)
end

