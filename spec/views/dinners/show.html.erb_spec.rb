require 'rails_helper'

RSpec.describe "dinners/show", type: :view do
  before(:each) do
    @dinner = assign(:dinner, Dinner.create!(
      :soup => "Soup",
      :accompaniment1 => "Accompaniment1",
      :accompaniment2 => "Accompaniment2",
      :accompaniment3 => "Accompaniment3",
      :garnish => "Garnish",
      :protein1 => "Protein1",
      :protein2 => "Protein2",
      :dessert => "Dessert",
      :juice => "Juice"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Soup/)
    expect(rendered).to match(/Accompaniment1/)
    expect(rendered).to match(/Accompaniment2/)
    expect(rendered).to match(/Accompaniment3/)
    expect(rendered).to match(/Garnish/)
    expect(rendered).to match(/Protein1/)
    expect(rendered).to match(/Protein2/)
    expect(rendered).to match(/Dessert/)
    expect(rendered).to match(/Juice/)
  end
end
