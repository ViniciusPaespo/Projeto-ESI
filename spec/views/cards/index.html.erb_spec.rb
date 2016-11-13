require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        :img_src => "Img Src",
        :description => "Description",
        :title => "Title",
        :user_id => 2
      ),
      Card.create!(
        :img_src => "Img Src",
        :description => "Description",
        :title => "Title",
        :user_id => 2
      )
    ])
  end

  it "renders a list of cards" do
    render
    assert_select "tr>td", :text => "Img Src".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
