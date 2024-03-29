require 'spec_helper'

describe "StaticPages" do
  title =
  describe "GET /static_pages" do
    describe "Home page" do
      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        page.should have_content('Sample App')
      end
      it "Should have the title 'Home'" do
        visit '/static_pages/home'
        page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Home')
      end
    end

    describe 'Help Page' do

      it "should have the conten 'Help'" do
        visit '/static_pages/help'
        page.should have_content('help')
      end
      it "Should have the title 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Help')
      end
    end

    describe 'About Page' do

      it 'Should have the content "About Us"' do
        visit '/static_pages/about'
        page.should have_content('About Us')
      end

      it "Should have the title 'About Us'" do
        visit '/static_pages/about'
        page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | About Us')
      end
    end
  end
end
