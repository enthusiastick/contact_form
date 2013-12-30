require 'spec_helper'

feature 'User creates a contact inquiry' do
  # As a site visitor
  # I want to contact the site's staff
  # So that I can tell them how awesome they are
  # Acceptance Criteria:
  # * I must specify a valid email address
  # * I must specify a subject
  # * I must specify a description
  # * I must specify a first name
  # * I must specify a last name

  context "with valid attributes" do
    it "creates an inquiry with valid attributes" do
      visit '/inquiries/new'

      fill_in "Email", with: "foo@example.com"
      fill_in "Subject", with: "You're the best"
      fill_in "Description", with: "Around. Nothing's ever gonna keep you down."
      fill_in "Firstname", with: "Foo"
      fill_in "Lastname", with: "Bar"
      click_on "Submit"

      expect(page).to have_content "Inquiry was successfully created"
    end
  end

  context "with invalid attributes" do
    it "sees errors for invalid attributes"
  end

end
