require 'spec helper'

describe "Static pages" do

let(:base title) { "JangIn" }

describe "Home page" do

it "should have the h1 'JangIn'" do
visit '/static pages/home'
page.should have selector('h1', :text => 'JangIn')
end

it "should have the base title" do
visit '/static pages/home'
page.should have selector('title', :text => "JangIn")
end

it "should not have a custom page title" do
visit '/static pages/home'
page.should not have selector('title', :text => '| Home')
end

end


describe "Help page" do

it "should have the h1 'Help'" do
visit '/static pages/help'
page.should have selector('h1', :text => 'Help')
end

it "should have the title 'Help'" do
visit '/static pages/help'
page.should have selector('title', :text => "#{base title} | Help")
end

end


describe "About page" do

it "should have the h1 'About Us'" do
visit '/static pages/about'
page.should have selector('h1', :text => 'About Us')
end

it "should have the title 'About Us'" do
visit '/static pages/about'
page.should have selector('title', :text => "#{base title} | About Us")
end

end


describe "Contact page" do

it "should have the h1 'Contact Us'" do
visit '/static pages/contact'
page.should have selector('h1', :text => 'Contact Us')
end

it "should have the title 'Contact Us'" do
visit '/static pages/contact'
page.should have selector('title', :text => "#{base title} | Contact")
end

end


end