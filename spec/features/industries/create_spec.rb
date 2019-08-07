require 'rails_helper'

RSpec.feature 'create' do
  let(:name) { 'Telecom' }

  scenario "create industry" do
    visit(new_industry_path)
    fill_in 'Name', with: name
    click_on 'Save'
    expect(page).to have_content('Industry was successfully created.')
  end
end
