require 'spec_helper'

feature 'Admin reviews contact inquiries' do
  it "sees all the inquiries listed on the page" do
    inquiry1 = FactoryGirl.create(:inquiry)
    inquiry2 = FactoryGirl.create(:inquiry)

    visit '/inquiries'

    expect(page).to have_content inquiry1.email
    expect(page).to have_content inquiry2.lastname
  end
end
