require 'spec helper'

describe "Static pages" do

describe "Home page" do

it "should have the h1 'JangIn'" do
visit '/static pages/home'
page.should have_selector('h1', :text => 'JangIn')
end

it "should have the right title" do
visit '/static pages/home'
page.should have selector('title',
:text => "JangIn | Home")
end

end

describe "Help page" do

it "should have the h1 'Help'" do
visit '/static pages/help'
page.should have selector('h1', :text => 'Help')
end

it "should have the title 'Help'" do
visit '/static pages/help'
page.should have selector('title',
:text => "JangIn | Help")
end

end

describe "About page" do

it "should have the h1 'About Us'" do
visit '/static pages/about'
page.should have selector('h1', :text => 'About Us')
end

it "should have the title 'About Us'" do
visit '/static pages/about'
page.should have selector('title',
:text => "JangIn | About Us")
end

end

end