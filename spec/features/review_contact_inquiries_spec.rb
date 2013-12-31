require 'spec_helper'

feature 'Admin reviews contact inquiries' do
  # As an admin
  # I want to review contact inquiries
  # So that I can respond or take action
  # Acceptance Criteria:
  # * I can see a list of all contact inquiries

  it "sees all the inquiries listed on the page" do
    inquiry1 = FactoryGirl.create(:inquiry)
    inquiry2 = FactoryGirl.create(:inquiry)

    visit '/inquiries'

    expect(page).to have_content inquiry1.email
    expect(page).to have_content inquiry2.lastname
  end
end
