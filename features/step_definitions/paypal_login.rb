Given(/^I am on a paypal website$/) do
  $Browser.paypal_home_pg.load
  $Browser.paypal_home_pg.login_button.click

end

When (/^I enter (.*?) and (.*?)$/) do |user, passwd|
  $Browser.paypal_home_pg.userid.set(user)
  $Browser.paypal_home_pg.next_button.click
  $Browser.paypal_home_pg.password.set(passwd)
end

Then(/^I validate the heading shows as "(.*?)"$/) do |heading|
  expect($Browser.paypal_home_pg.heading.text).to eql(heading)
  binding.pry
end

Then(/^I should see the note as "(.*?)"$/) do |heading|
  expect ($Browser.paypal_home_pg.note.text).to eql(heading)

end

Then(/^I should validate the link for favorite shops is "(.*?)"$/) do |link|
  expect ($Browser.paypal_home_pg.fav_stores_link["href"]).to eql(link)
  expect ($Browser.paypal_home_pg.fav_stores_link.text).to eql("Shop now with paypal at your favourite stores")
end

