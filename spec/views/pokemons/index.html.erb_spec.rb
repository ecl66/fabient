require 'rails_helper'

RSpec.describe "pokemons/index", type: :view do
  before(:each) do
    assign(:pokemons, [
      Pokemon.create!(
        name: "Name",
        type_1: "Type 1",
        type_2: "Type 2",
        total: 2,
        hp: 3,
        attack: 4,
        defense: 5,
        sp_atk: 6,
        sp_def: 7,
        speed: 8,
        generation: 9,
        legendary: false
      ),
      Pokemon.create!(
        name: "Name",
        type_1: "Type 1",
        type_2: "Type 2",
        total: 2,
        hp: 3,
        attack: 4,
        defense: 5,
        sp_atk: 6,
        sp_def: 7,
        speed: 8,
        generation: 9,
        legendary: false
      )
    ])
  end

  it "renders a list of pokemons" do
    render
    assert_select "div#pokemons", count: 1
    #assert_select "tr>td", text: "Type 1".to_s, count: 2
    #assert_select "tr>td", text: "Type 2".to_s, count: 2
    #assert_select "tr>td", text: 2.to_s, count: 2
    #assert_select "tr>td", text: 3.to_s, count: 2
    #assert_select "tr>td", text: 4.to_s, count: 2
    #assert_select "tr>td", text: 5.to_s, count: 2
    #assert_select "tr>td", text: 6.to_s, count: 2
    #assert_select "tr>td", text: 7.to_s, count: 2
    #assert_select "tr>td", text: 8.to_s, count: 2
    #assert_select "tr>td", text: false.to_s, count: 2
  end
end
