require 'rails_helper'

RSpec.describe "standards/index", type: :view do
  before(:each) do
    assign(:standards, [
      Standard.create!(
        :name => "Name"
      ),
      Standard.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of standards" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
