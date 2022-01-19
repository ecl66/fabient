require 'rails_helper'

describe Pokemon, type: :model do
  before(:all) do
    @pokemon = Pokemon.create(
      name: 'test',
      type_1: 'Grass',
      type_2: 'Poison',
      total: 10,
      hp: 11,
      attack: 12,
      defense: 13,
      sp_atk: 14,
      sp_def: 15,
      speed: 20,
      generation: 1,
      legendary: true
    )
  end

  it 'check create' do 
    expect(@pokemon).to be_valid
  end

  it 'check delete' do
    count = Pokemon.count
    @pokemon.destroy
    expect(Pokemon.count).to eq(count-1)
  end

end

