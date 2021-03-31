require 'rails_helper'

RSpec.describe "cats/show", type: :view do
  before(:each) do
    @cat = assign(:cat, Cat.create!(
      user_id: 2,
      name: "Name",
      string: "String",
      prefectures: "Prefectures",
      introduction: "MyText",
      image: "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/Prefectures/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
  end
end
