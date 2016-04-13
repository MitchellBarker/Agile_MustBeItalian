When /^(?:|I )click on button with text "([^"]*)"$/ do |inner_text|
  page.find('div', :text => inner_text)
end