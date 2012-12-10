Given /^I am on the 'new showing' page$/ do
 visit new_showing_path
end

Then /^in the "(.*?)", I should see "(.*?)"$/ do |tag, value|
  page.should have_css(tag, :text => value)
end

When /^I enter "(.*?)" for "(.*?)"$/ do |arg1, arg2|
  save_and_open_page
 fill_in arg2, :with => arg1
end

When /^I select "(.*?)" from "(.*?)"$/ do |arg1, arg2|
 select arg1, :from => arg2
end


When /^i click button "(.*?)"$/ do |arg1|
  click_button arg1
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content arg1
end
