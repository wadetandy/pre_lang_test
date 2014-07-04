require 'rails_helper'

RSpec.describe "comments/edit", :type => :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :post => nil,
      :text => "MyString",
      :user => nil
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_post_id[name=?]", "comment[post_id]"

      assert_select "input#comment_text[name=?]", "comment[text]"

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"
    end
  end
end
