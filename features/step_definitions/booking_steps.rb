Given /^I am on 'bookings' page$/ do
  visit bookings_path
end

Then /^in the "(.*?)", I should see "(.*?)"$/ do |arg1, arg2|
  page.should have_selector(arg2, :content => arg1)
end

Then /^in the "(.*?)", I should see a link to "(.*?)"$/ do |csstag, value|
  within csstag do
    page.should have_link value
  end
end



Given /^I am on the 'new bookings' page$/ do
visit new_booking_path
end

When /^I enter "(.*?)" for "(.*?)"$/ do |value, filed|
  fill_in filed, :with => value
end

When /^I click button "(.*?)"$/ do |buttonname|
  click_button buttonname

end

Then /^I should see "(.*?)"$/ do |output|
  page.should have_content output
end
