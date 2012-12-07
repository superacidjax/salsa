require 'spec_helper'

describe "Pages" do
  subject { page }

    describe "Home page" do
      before { visit root_path }
        it { should have_selector('h1', text: "Welcome to Salsa!") }
        it { should have_link "Login"}
    end

    describe "About page" do
      before {visit static_pages_about_path }
        it { should have_selector('h1', text: "About Salsa") }
      end
end
