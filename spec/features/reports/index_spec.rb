require 'rails_helper'

RSpec.feature 'index' do
  scenario "index" do
    visit(root_path)

    expect(page).to have_content('MTS')
    expect(page).to have_content('Yandex')
    
    expect(page).to have_content('2018')
    expect(page).to have_content('2017')
    
    expect(page).to have_content('IFRS')
    expect(page).to have_content('US GAAP')
    
    expect(page).to have_content('USD')
    expect(page).to have_content('RUB')
  end
end
