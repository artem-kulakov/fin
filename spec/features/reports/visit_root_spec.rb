require 'rails_helper'

RSpec.feature 'root' do
  scenario "visit root" do
    visit(root_path)
    expect(page).to have_content('Listing reports')
  end
end
