require 'rails_helper'

RSpec.describe "standards/new", type: :view do
  before(:each) do
    assign(:standard, Standard.new(
      :name => "MyString"
    ))
  end

  it "renders new standard form" do
    render

    assert_select "form[action=?][method=?]", standards_path, "post" do

      assert_select "input[name=?]", "standard[name]"
    end
  end
end
