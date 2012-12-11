Given /^I am on the 'Showings' page$/ do
  visit showings_path
end

Then /^in the "(.*?)", I should see "(.*?)"$/ do |arg1, arg2|
  page.should have_css(arg1, :text => arg2)
end