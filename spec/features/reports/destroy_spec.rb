require 'rails_helper'

RSpec.feature 'destroy report' do
  scenario 'destroy report' do
    visit(root_path)
    first(".destroy-report").click
    expect(page).to have_content('Report was successfully destroyed.')
  end
end
