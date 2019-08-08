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

    expect(page).to have_content('Revenues')
    expect(page).to have_content('1000000')
    expect(page).to have_content('1500000')

    expect(page).to have_content('Net income')
    expect(page).to have_content('500000')
    expect(page).to have_content('700000')

    expect(page).to have_content('Debt')
    expect(page).to have_content('800000')
    expect(page).to have_content('1100000')
  end
end
