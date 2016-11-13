require 'rails_helper'

RSpec.describe "cards/edit", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      :img_src => "MyString",
      :description => "MyString",
      :title => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit card form" do
    render

    assert_select "form[action=?][method=?]", card_path(@card), "post" do

      assert_select "input#card_img_src[name=?]", "card[img_src]"

      assert_select "input#card_description[name=?]", "card[description]"

      assert_select "input#card_title[name=?]", "card[title]"

      assert_select "input#card_user_id[name=?]", "card[user_id]"
    end
  end
end
