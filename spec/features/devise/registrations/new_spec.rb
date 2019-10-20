require 'rails_helper'

RSpec.feature 'new' do
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
end
