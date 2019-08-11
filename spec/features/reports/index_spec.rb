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
    
    expect(page).to have_content('AUD')
    expect(page).to have_content('CAD')

    expect(page).to have_content('Revenues')
    expect(page).to have_content('1000000')
    expect(page).to have_content('1500000')

    expect(page).to have_content('Net income')
    expect(page).to have_content('500000')
    expect(page).to have_content('600000')

    expect(page).to have_content('Debt')
    expect(page).to have_content('900000')
    expect(page).to have_content('1200000')
  end
end
