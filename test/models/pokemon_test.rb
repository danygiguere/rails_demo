require "test_helper"

class PokemonTest < ActiveSupport::TestCase
  setup do
    @pokemon = pokemons(:one)
  end

  test "should save pokemon" do
    pokemon = Pokemon.new({
      name:       @pokemon.name,
      type1:      @pokemon.type1,
      type2:      @pokemon.type2,
      total:      @pokemon.total,
      hp:         @pokemon.hp,
      attack:     @pokemon.attack,
      defense:    @pokemon.defense,
      sp_atk:     @pokemon.sp_atk,
      sp_def:     @pokemon.sp_def,
      speed:      @pokemon.speed,
      generation: @pokemon.generation,
    })
    assert pokemon.save
  end

  test "should not save pokemon without name" do
    pokemon = Pokemon.new
    assert_not pokemon.save
  end

end