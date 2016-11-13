require 'rails_helper'

RSpec.describe "cards/show", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      :img_src => "Img Src",
      :description => "Description",
      :title => "Title",
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Img Src/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
  end
end
