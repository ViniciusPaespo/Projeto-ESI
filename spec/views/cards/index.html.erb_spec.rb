require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        :img_src => "Img Src",
        :description => "Description",
        :title => "Title",
        :user_id => 1
      ),
      Card.create!(
        :img_src => "Img Src",
        :description => "Description",
        :title => "Title",
        :user_id => 1
      )
    ])
  end

  it "renders a list of cards" do
    render
    assert_select "span>span", :text => "Title".to_s, :count => 2
  end
end
