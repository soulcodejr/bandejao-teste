require 'rails_helper'

RSpec.describe "dinners/index", type: :view do
  before(:each) do
    assign(:dinners, [
      Dinner.create!(
        :soup => "Soup",
        :accompaniment1 => "Accompaniment1",
        :accompaniment2 => "Accompaniment2",
        :accompaniment3 => "Accompaniment3",
        :garnish => "Garnish",
        :protein1 => "Protein1",
        :protein2 => "Protein2",
        :dessert => "Dessert",
        :juice => "Juice"
      ),
      Dinner.create!(
        :soup => "Soup",
        :accompaniment1 => "Accompaniment1",
        :accompaniment2 => "Accompaniment2",
        :accompaniment3 => "Accompaniment3",
        :garnish => "Garnish",
        :protein1 => "Protein1",
        :protein2 => "Protein2",
        :dessert => "Dessert",
        :juice => "Juice"
      )
    ])
  end

  it "renders a list of dinners" do
    render
    assert_select "tr>td", :text => "Soup".to_s, :count => 2
    assert_select "tr>td", :text => "Accompaniment1".to_s, :count => 2
    assert_select "tr>td", :text => "Accompaniment2".to_s, :count => 2
    assert_select "tr>td", :text => "Accompaniment3".to_s, :count => 2
    assert_select "tr>td", :text => "Garnish".to_s, :count => 2
    assert_select "tr>td", :text => "Protein1".to_s, :count => 2
    assert_select "tr>td", :text => "Protein2".to_s, :count => 2
    assert_select "tr>td", :text => "Dessert".to_s, :count => 2
    assert_select "tr>td", :text => "Juice".to_s, :count => 2
  end
end
