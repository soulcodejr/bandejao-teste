require 'rails_helper'

RSpec.describe "dinners/edit", type: :view do
  before(:each) do
    @dinner = assign(:dinner, Dinner.create!(
      :soup => "MyString",
      :accompaniment1 => "MyString",
      :accompaniment2 => "MyString",
      :accompaniment3 => "MyString",
      :garnish => "MyString",
      :protein1 => "MyString",
      :protein2 => "MyString",
      :dessert => "MyString",
      :juice => "MyString"
    ))
  end

  it "renders the edit dinner form" do
    render

    assert_select "form[action=?][method=?]", dinner_path(@dinner), "post" do

      assert_select "input#dinner_soup[name=?]", "dinner[soup]"

      assert_select "input#dinner_accompaniment1[name=?]", "dinner[accompaniment1]"

      assert_select "input#dinner_accompaniment2[name=?]", "dinner[accompaniment2]"

      assert_select "input#dinner_accompaniment3[name=?]", "dinner[accompaniment3]"

      assert_select "input#dinner_garnish[name=?]", "dinner[garnish]"

      assert_select "input#dinner_protein1[name=?]", "dinner[protein1]"

      assert_select "input#dinner_protein2[name=?]", "dinner[protein2]"

      assert_select "input#dinner_dessert[name=?]", "dinner[dessert]"

      assert_select "input#dinner_juice[name=?]", "dinner[juice]"
    end
  end
end
