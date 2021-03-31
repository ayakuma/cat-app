require 'rails_helper'

RSpec.describe "cats/new", type: :view do
  before(:each) do
    assign(:cat, Cat.new(
      user_id: 1,
      name: "MyString",
      string: "MyString",
      prefectures: "MyString",
      introduction: "MyText",
      image: "MyString"
    ))
  end

  it "renders new cat form" do
    render

    assert_select "form[action=?][method=?]", cats_path, "post" do

      assert_select "input[name=?]", "cat[user_id]"

      assert_select "input[name=?]", "cat[name]"

      assert_select "input[name=?]", "cat[string]"

      assert_select "input[name=?]", "cat[prefectures]"

      assert_select "textarea[name=?]", "cat[introduction]"

      assert_select "input[name=?]", "cat[image]"
    end
  end
end
