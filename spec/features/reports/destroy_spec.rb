require 'rails_helper'

RSpec.feature 'destroy report', js: true do
  scenario 'click Destroy and cancel' do
    visit(root_path)

    first('.destroy-report').click

    page.driver.browser.switch_to.alert.dismiss

    expect(page).to have_selector('.report-name', count: 2)
  end

  scenario 'destroy report', js: true do
    visit(root_path)

    first('.destroy-report').click

    page.driver.browser.switch_to.alert.accept

    expect(page).to have_content('Report was successfully destroyed.', count: 1)

    expect(page).to have_selector('.report-name', count: 1)
  end
end
