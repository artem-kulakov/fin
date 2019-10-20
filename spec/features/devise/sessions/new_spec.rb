require 'rails_helper'

RSpec.feature 'new' do
  scenario 'sign in and sign out' do
    visit(root_path)

    click_on 'Sign in'

    expect(find('.navbar')).not_to have_button('Sign in')

    fill_in 'Email', with: 'john@smith.com'
    fill_in 'Password', with: 'swordfish'

    click_on 'Sign in'

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

    click_on 'Sign in'

    expect(page).to have_content('Invalid Email or password.')
    expect(page).to have_content('Sign out', count: 0)
  end
end
