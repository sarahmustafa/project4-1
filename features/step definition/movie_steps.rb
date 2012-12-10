Given /^I am on the 'new movie' page$/ do
  visit new_movie_path
end

When /^I type "(.*?)" for "(.*?)"$/ do |arg1, arg2|
 fill_in arg2, :with => arg1
end

When /^I click on the button "(.*?)"$/ do |arg1|
  click_button arg1
end
