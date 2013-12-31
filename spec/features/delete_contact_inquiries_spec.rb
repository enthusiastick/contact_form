require 'spec_helper'

feature 'Admin deletes contact inquiries' do
  # As an admin
  # I want to delete an inquiry
  # So that I can remove spam or other undesirable inquiries
  # Acceptance Criteria:
  # I can remove an item from the listing of contact inquiries

  it "deletes an inquiry from the page" do
    inquiry1 = FactoryGirl.create(:inquiry)
    inquiry2 = FactoryGirl.create(:inquiry)

    visit '/inquiries'
    click_on('Delete', :match => :first)

    expect(Inquiry.count).to eq(1)
  end
end
