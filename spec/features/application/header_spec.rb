require 'rails_helper'

RSpec.feature 'header' do
  scenario "test header" do
    visit(root_path)
    expect(page).to have_content('FIN')
  end
end
