require 'spec_helper'

describe "StaticPages" do

  describe "Home" do
    it "uses the base title" do
      visit '/static_pages/home'
      expect( page ).to have_selector('title', text: "now is night" )
      expect( page ).not_to have_selector('title', text: "|")
    end
  end

  describe "Contact" do
  	it "title contains base | contact" do
  		visit '/static_pages/contact'
  		expect( page ).to have_selector('title', text: "now is night | contact" )
  	end
  end
end