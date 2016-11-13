require 'rails_helper'

RSpec.describe "cards/new", type: :view do
  before(:each) do
    assign(:card, Card.new(
      :img_src => "MyString",
      :description => "MyString",
      :title => "MyString",
      :user_id => 1
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do

      assert_select "input#card_img_src[name=?]", "card[img_src]"

      assert_select "input#card_description[name=?]", "card[description]"

      assert_select "input#card_title[name=?]", "card[title]"

      assert_select "input#card_user_id[name=?]", "card[user_id]"
    end
  end
end
