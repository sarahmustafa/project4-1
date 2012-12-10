Given /^I am on the 'new movie' page$/ do
  visit new_movie_path
end

When /^I type "(.*?)" for "(.*?)"$/ do |arg1, arg2|
 fill_in arg2, :with => arg1
end

When /^I click on the button "(.*?)"$/ do |arg1|
  click_button arg1
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content arg1
end

Given /^I am on the 'movies' page$/ do
  visit movies_path
end

Then /^in the "(.*?)", I should see "(.*?)"$/ do |arg1, arg2|
  page.should have_css(arg1, :text => arg2)
end



