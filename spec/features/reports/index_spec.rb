require 'rails_helper'

RSpec.feature 'index' do
  scenario 'index' do
    visit(root_path)

    expect(page).to have_content('MTS')
    expect(page).to have_content('Yandex')

    expect(page).to have_content('2018')
    expect(page).to have_content('2017')

    expect(page).to have_content('IFRS')
    expect(page).to have_content('US GAAP')

    expect(page).to have_content('AUD')
    expect(page).to have_content('CAD')

    expect(page).to have_content('Revenues')
    expect(page).to have_content('1,000,000')
    expect(page).to have_content('1,500,000')

    expect(page).to have_content('Net income')
    expect(page).to have_content('500,000')
    expect(page).to have_content('600,000')

    expect(page).to have_content('Debt')
    expect(page).to have_content('900,000')
    expect(page).to have_content('1,200,000')
  end

  scenario 'sign up' do
    visit(root_path)

    click_on 'Sign in'

    click_on 'Sign up'

    fill_in 'Name', with: 'John Smith'
    fill_in 'Email', with: 'user@user.com'
    fill_in 'Password', with: 'hasanyone'
    fill_in 'Password confirmation', with: 'hasanyone'

    click_on 'Sign up'

    expect(page).to have_content('Welcome! You have signed up successfully.')
    expect(page).to have_content('John Smith')
    expect(page).to have_content('Sign out')
  end
end
