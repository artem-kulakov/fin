require 'rails_helper'

RSpec.describe 'reports/new', type: :view do
  before(:each) do
    assign(:report, Report.new(
                      company: nil,
                      period: nil,
                      standard: nil,
                      currency: nil
                    ))
  end

  it 'renders new report form' do
    render

    assert_select 'form[action=?][method=?]', reports_path, 'post' do
      assert_select 'input[name=?]', 'report[company_id]'

      assert_select 'input[name=?]', 'report[period_id]'

      assert_select 'input[name=?]', 'report[standard_id]'

      assert_select 'input[name=?]', 'report[currency_id]'
    end
  end
end
