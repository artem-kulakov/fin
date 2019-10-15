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

    expect(find('.navbar')).not_to have_button('Sign in')

    fill_in 'Name', with: 'Mary Smith'
    fill_in 'Email', with: 'user@user.com'
    fill_in 'Password', with: 'swordfish'
    fill_in 'Password confirmation', with: 'swordfish'

    click_on 'Sign up'

    expect(page).to have_content('Welcome! You have signed up successfully.')
    expect(page).to have_content('Mary Smith')
    expect(page).to have_content('Sign out')
  end

  scenario 'sign up failure' do
    visit(root_path)

    click_on 'Sign in'

    click_on 'Sign up'

    expect(find('.navbar')).not_to have_button('Sign in')

    fill_in 'Email', with: 'user@user.com'
    fill_in 'Password', with: 'swordfish'
    fill_in 'Password confirmation', with: 'swordfish'

    click_on 'Sign up'

    expect(page).to have_content('1 error')
    expect(page).to have_content('Sign up')
  end

  scenario 'sign in and sign out' do
    visit(root_path)

    click_on 'Sign in'

    expect(find('.navbar')).not_to have_button('Sign in')

    fill_in 'Email', with: 'john@smith.com'
    fill_in 'Password', with: 'swordfish'

    click_on 'Log in'

    expect(page).to have_content('Signed in successfully.')
    expect(page).to have_content('John Smith')

    click_on 'Sign out'

    expect(page).to have_content('Signed out successfully.')
  end

  scenario 'sign in failure' do
    visit(root_path)

    click_on 'Sign in'

    expect(find('.navbar')).not_to have_button('Sign in')

    fill_in 'Email', with: 'peter@smith.com'
    fill_in 'Password', with: 'swordfish'

    click_on 'Log in'

    expect(page).to have_content('Invalid Email or password.')
    expect(page).to have_content('Sign out', count: 0)
  end
end
