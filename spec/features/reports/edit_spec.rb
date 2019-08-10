require 'rails_helper'

RSpec.feature 'edit report' do
  let(:report) { Report.first }

  scenario 'edit report' do
    visit(edit_report_path(report))
    expect(page).to have_content('Editing report')
    expect(page).to have_content('Debt')
    expect(page).to have_selector("input[value='700000']")

    fill_in 'Revenues', with: 5000000
    fill_in 'Net income', with: 500000
    fill_in 'Debt', with: 3000000

    click_on 'Save'
    expect(page).to have_content('Report was successfully updated.')
    expect(page).to have_content('5000000')
    expect(page).to have_content('500000')
    expect(page).to have_content('3000000')
  end
end
