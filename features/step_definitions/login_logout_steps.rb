Given /^I have successfully logged in to a previously created board$/ do
  visit(HomePage).login_to_owned_board
end

Given /^I have successfully logged in to a board previously created by another user$/ do
  visit(HomePage).login_to_unowned_board
end

Then /^I can logout successfully$/ do
  pending
end