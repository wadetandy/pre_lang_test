require 'rails_helper'

RSpec.describe "comments/new", :type => :view do
  before(:each) do
    assign(:comment, Comment.new(
      :post => nil,
      :text => "MyString",
      :user => nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_post_id[name=?]", "comment[post_id]"

      assert_select "input#comment_text[name=?]", "comment[text]"

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"
    end
  end
end
