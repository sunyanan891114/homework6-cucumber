Given(/^Open the homepage$/) do
  visit '/'
end

Given(/^Input "([^"]*)"$/) do |search_content|
  # fill_in "//input[@id='donation_amount']",with: search_content
  fill_in "search",with: search_content
end

Given(/^Alert "([^"]*)"$/) do |expect|
  result = find("#list_number").text
  expect(result).to eq expect
end

Given(/^Delete "([^"]*)"$/) do |arg1|
#  find(:xpath, "//div[1]/div/div[1]/ul/li/div/button").click
  find(:xpath, "/html/body/div[1]/div/div/ul/li[1]/button").click
  find("#delete_confirm").click
end

Given(/^Add "([^"]*)" "([^"]*)"$/) do |arg1, arg2|
  find("#add").click
  fill_in "add_title",with: arg1
  fill_in "add_url", with: arg2
  find("#add_confirm").click
end