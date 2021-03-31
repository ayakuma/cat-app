require 'rails_helper'

RSpec.describe "cats/edit", type: :view do
  before(:each) do
    @cat = assign(:cat, Cat.create!(
      user_id: 1,
      name: "MyString",
      string: "MyString",
      prefectures: "MyString",
      introduction: "MyText",
      image: "MyString"
    ))
  end

  it "renders the edit cat form" do
    render

    assert_select "form[action=?][method=?]", cat_path(@cat), "post" do

      assert_select "input[name=?]", "cat[user_id]"

      assert_select "input[name=?]", "cat[name]"

      assert_select "input[name=?]", "cat[string]"

      assert_select "input[name=?]", "cat[prefectures]"

      assert_select "textarea[name=?]", "cat[introduction]"

      assert_select "input[name=?]", "cat[image]"
    end
  end
end
