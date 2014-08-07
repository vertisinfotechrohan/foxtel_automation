require 'selenium-cucumber'
require_relative "object_repo"

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code

Then(/^I should see login page$/) do
  #step %[I should see text as "User account" for element having xpath "#{$text_user_account_on_login_page}"]
  step %[element having xpath "#{$text_user_account_on_login_page}" should have text as "User account"]
end

When(/^I enter username as "(.*?)"$/) do |arg1|
  step %[I enter "#{arg1}" into input field having id "#{$uname_on_login_page}"]
end

When(/^enter password as "(.*?)"$/) do |arg1|
  step %[I enter "#{arg1}" into input field having id "#{$passwd_on_login_page}"]
end

When(/^I click on "(.*?)" button$/) do |arg1|
  step %[I click on element having id "#{$login_button}"]
end

Then(/^I should see "(.*?)" tab as default selected\.$/) do |arg1|
  #step %[I should see text as "Foxtel Content" for element having xpath "#{$text_user_account_on_login_page}"]
  step %[element having xpath "#{$text_user_account_on_login_page}" should have text as "Foxtel Content"]
end

When(/^I select "(.*?)" program$/) do |arg1|
  step %[I click on element having xpath "#{$select_type_as_program}"]
  step %[I enter "#{arg1}" into input field having id "#{$input_field_name}"]
  step %[I select "- Any -" option by text from dropdown having id "#{$published_dropdown_list}"]
  step %[I click on element having id "#{$apply_button}"]
  sleep 20
  #step %[I should see text as "Pecker" for element having xpath "#{$pecker_prog_displayed}"]
  step %[element having xpath "#{$pecker_prog_displayed}" should have text as "Pecker"]
  step %[I click on element having xpath "#{$pecker_prog_link}"]
end

Then(/^I should see summary tab$/) do
  #step %[I should see text as "Pecker" for element having xpath "#{$text_user_account_on_login_page}"]
  step %[element having xpath "#{$text_user_account_on_login_page}" should have text as "Pecker"]
end

When(/^I see the text "(.*?)"$/) do |arg1|
  #step %[I should see text as "ROTTEN TOMATOES" for element having xpath "#{$rotten_tomatoes_tab}"]
  step %[element having xpath "#{$rotten_tomatoes_tab}" should have text as "ROTTEN TOMATOES"]
end

When(/^I click on Rotten Tomatoes tab$/) do
  step %[I click on element having xpath "#{$rotten_tomatoes_tab}"]
end

Then(/^I should see "(.*?)" field$/) do |arg1|
  #step %[I should see element present having id "#{$imdb_id_field_on_rotten_tomatoes_tab}"]
  step %[element having id "#{$imdb_id_field_on_rotten_tomatoes_tab}" should be present]
end


When(/^I enter valid imdb id as "(.*?)"$/) do |arg1|
  step %[I clear input field having id "#{$imdb_id_field_on_rotten_tomatoes_tab}"]
  step %[I enter "#{arg1}" into input field having id "#{$imdb_id_field_on_rotten_tomatoes_tab}"]
  step %[I click on element having id "#{$update_rotten_tomatoes_data_button}"]
  sleep 60
end

Then(/^I should see Rotten tomato movie imported successfully$/) do
  #step %[I should see text as "Battlefield Earth (2000)" for element having xpath "#{$rotten_tomato_movie_title}"]
  step %[element having xpath "#{$rotten_tomato_movie_title}" should have text as "Battlefield Earth (2000)"]
end

When(/^I click on content menu$/) do
  sleep 10
  step %[I click on element having xpath "#{$content_menu}"]
  sleep 10
  #step %[I should see text as "Content" for element having xpath "#{$text_user_account_on_login_page}"]
  step %[element having xpath "#{$text_user_account_on_login_page}" should have text as "Content"]
  step %[I select "Rotten Tomatoes Movie" option by text from dropdown having id "#{$filter_by_rotten_tomato_movie}"]
  step %[I click on element having id "edit-submit"]
  sleep 10
  #step %[I should see text as "Rotten Tomatoes Movie" for element having xpath "#{$rotten_tomato_movie_list_displayed}"]
  step %[element having xpath "#{$rotten_tomato_movie_list_displayed}" should have text as "Rotten Tomatoes Movie"]
end

Then(/^I should see new movie node$/) do
  step %[I navigate to "http://foxtel-cms.local/node/5899"]
  sleep 10
  #step %[I should see text as "Battlefield Earth" for element having xpath "#{$text_user_account_on_login_page}"]
  step %[element having xpath "#{$text_user_account_on_login_page}" should have text as "Battlefield Earth"]
end

When(/^I see the text IMDB ID$/) do
  #step %[I should see text as "IMDB ID" for element having xpath "#{$imdb_id_property_for_new_node}"]
  #step %[I should see text as "IMDB ID: " for element having xpath ".//*[@id='node-5922']/div/div[12]/div[1]"]
  step %[element having xpath ".//*[@id='node-5922']/div/div[12]/div[1]" should have text as "IMDB ID: "]
end

When(/^I see the text Abridged cast$/) do
  #step %[I should see text as "Abridged cast: " for element having xpath "#{$abridged_cast_property_for_new_node}"]
  step %[element having xpath "#{$abridged_cast_property_for_new_node}" should have text as "Abridged cast: "]
end

When(/^I see the text Abridged directors$/) do
  #step %[I should see text as "Abridged directors: " for element having xpath "#{$abridged_directors_property_for_new_node}"]
  step %[element having xpath "#{$abridged_directors_property_for_new_node}" should have text as "Abridged directors: "]
end

When(/^I see the text Genres$/) do
  #step %[I should see text as "Genres: " for element having xpath "#{$genres_property_for_new_node}"]
  step %[element having xpath "#{$genres_property_for_new_node}" should have text as "Genres: "]
end

When(/^I see the text Synopsis$/) do
  #step %[I should see text as "Synopsis: " for element having xpath "#{$synopsis_property_for_new_node}"]
  step %[element having xpath "#{$synopsis_property_for_new_node}" should have text as "Synopsis: "]
end

Then(/^I should finish with test cases as "(.*?)"$/) do |arg1|
  step %[I click on element having xpath "#{$logout_button}"]
  sleep 10
  #step %[I should see text as "User account" for element having xpath "#{$text_user_account_on_login_page}"]
  step %[element having xpath "#{$text_user_account_on_login_page}" should have text as "User account"]
end
