require 'rails_helper'

RSpec.feature 'show report' do
  let(:report) { Report.first }

  scenario 'show report' do
    visit(report_path(report))
    expect(page).to have_content('MTS')
    expect(page).to have_content('Debt')
    expect(page).to have_content('700000')
  end
end
