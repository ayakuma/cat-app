require 'rails_helper'

RSpec.describe "cats/index", type: :view do
  before(:each) do
    assign(:cats, [
      Cat.create!(
        user_id: 2,
        name: "Name",
        string: "String",
        prefectures: "Prefectures",
        introduction: "MyText",
        image: "Image"
      ),
      Cat.create!(
        user_id: 2,
        name: "Name",
        string: "String",
        prefectures: "Prefectures",
        introduction: "MyText",
        image: "Image"
      )
    ])
  end

  it "renders a list of cats" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "String".to_s, count: 2
    assert_select "tr>td", text: "Prefectures".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
  end
end
