require 'rails_helper'

RSpec.describe "standards/show", type: :view do
  before(:each) do
    @standard = assign(:standard, Standard.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
