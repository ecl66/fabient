require 'rails_helper'

RSpec.describe "pokemons/edit", type: :view do
  before(:each) do
    @pokemon = assign(:pokemon, Pokemon.create!(
      name: "MyString",
      type_1: "MyString",
      type_2: "MyString",
      total: 1,
      hp: 1,
      attack: 1,
      defense: 1,
      sp_atk: 1,
      sp_def: 1,
      speed: 1,
      generation: 1,
      legendary: false
    ))
  end

  #it "renders the edit pokemon form" do
    #render

    #assert_select "form[action=?][method=?]", pokemon_path(@pokemon), "post" do

      #assert_select "input[name=?]", "pokemon[name]"

      #assert_select "input[name=?]", "pokemon[type_1]"

      #assert_select "input[name=?]", "pokemon[type_2]"

      #assert_select "input[name=?]", "pokemon[total]"

      #assert_select "input[name=?]", "pokemon[hp]"

      #assert_select "input[name=?]", "pokemon[attack]"

      #assert_select "input[name=?]", "pokemon[defense]"

      #assert_select "input[name=?]", "pokemon[sp_atk]"

      #assert_select "input[name=?]", "pokemon[speed]"

      #assert_select "input[name=?]", "pokemon[generation]"

      #assert_select "input[name=?]", "pokemon[legendary]"
    #end
  #end
end
