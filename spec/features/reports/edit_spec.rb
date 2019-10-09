require 'rails_helper'

RSpec.feature 'edit report', js: true do
  let(:report) { Report.first }

  scenario 'edit report' do
    visit(edit_report_path(report))

    expect(page).to have_content('You need to sign in or sign up before continuing.')

    fill_in 'Email', with: 'john@smith.com'
    fill_in 'Password', with: 'swordfish'

    click_on 'Log in'

    expect(page).to have_content('Editing report')
    expect(page).to have_content('Debt')
    expect(page).to have_selector("input[value='700000']")

    fill_in 'Revenues', with: 5_000_000
    fill_in 'Net income', with: 500_000
    fill_in 'Debt', with: 3_000_000

    click_on 'Save'
    
    expect(page).to have_content('Report was successfully updated.', count: 1)

    click_on(class: 'close-notice')
    sleep 1
    expect(page).to have_content('Report was successfully updated.', count: 0)

    expect(page).to have_content('5,000,000')
    expect(page).to have_content('500,000')
    expect(page).to have_content('3,000,000')
  end
end
