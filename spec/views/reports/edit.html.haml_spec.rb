require 'rails_helper'

RSpec.describe "reports/edit", type: :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :company => nil,
      :period => nil,
      :standard => nil,
      :currency => nil
    ))
  end

  it "renders the edit report form" do
    render

    assert_select "form[action=?][method=?]", report_path(@report), "post" do

      assert_select "input[name=?]", "report[company_id]"

      assert_select "input[name=?]", "report[period_id]"

      assert_select "input[name=?]", "report[standard_id]"

      assert_select "input[name=?]", "report[currency_id]"
    end
  end
end
