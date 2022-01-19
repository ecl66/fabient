require 'rails_helper'

RSpec.describe "pokemons/show", type: :view do
  before(:each) do
    @pokemon = assign(:pokemon, Pokemon.create!(
      name: "Name",
      type_1: "Type 1",
      type_2: "Type 2",
      total: 2,
      hp: 3,
      attack: 4,
      defense: 5,
      sp_atk: 6,
      sp_def: 8,
      speed: 7,
      generation: 8,
      legendary: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type 1/)
    expect(rendered).to match(/Type 2/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/false/)
  end
end
