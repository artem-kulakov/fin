require 'rails_helper'

RSpec.describe "standards/edit", type: :view do
  before(:each) do
    @standard = assign(:standard, Standard.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit standard form" do
    render

    assert_select "form[action=?][method=?]", standard_path(@standard), "post" do

      assert_select "input[name=?]", "standard[name]"
    end
  end
end
