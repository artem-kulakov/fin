require 'rails_helper'

RSpec.feature 'new report' do
  scenario 'new report' do
    visit(root_path)
    click_on 'New Report'

    expect(page).to have_content('You need to sign in or sign up before continuing.')

    fill_in 'Email', with: 'john@smith.com'
    fill_in 'Password', with: 'swordfish'

    click_on 'Log in'

    expect(page).to have_content('New report')
    expect(page).to have_content('John Smith')
    expect(page).to have_content('Sign out')

    select 'Yandex', from: 'Company'
    select '2017', from: 'Period'
    select 'US GAAP', from: 'Standard'
    select 'USD', from: 'Currency'

    click_on 'New company'
    fill_in 'Name', with: 'Oracle'
    click_on 'Save'

    expect(page).to have_content('Company was successfully created.', count: 1)

    select 'Oracle', from: 'Company'
    fill_in 'Revenues', with: 5_000_000
    fill_in 'Net income', with: 500_000
    fill_in 'Debt', with: 3_000_000

    click_on 'Save'

    expect(page).to have_content('Report was successfully created.', count: 1)
    expect(page).to have_content('Oracle')
    expect(page).to have_content('5,000,000')
    expect(page).to have_content('500,000')
    expect(page).to have_content('3,000,000')
  end
end
