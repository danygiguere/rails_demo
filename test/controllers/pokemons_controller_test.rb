require "test_helper"

class PokemonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemon = pokemons(:one)
  end

  test "should get index" do
    get pokemons_url
    assert_response :success
  end

  test "should get new" do
    get new_pokemon_url
    assert_response :success
  end

  test "should create pokemon" do
    post pokemons_url,
           params: {
             pokemon: {
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
             },
           }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  test "should note create pokemon when missing name" do
    post pokemons_url,
           params: {
             pokemon: {
              name:       "",
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
             },
           }
    assert_response :unprocessable_entity
  end

  test "should show pokemon" do
    get pokemon_url(@pokemon)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokemon_url(@pokemon)
    assert_response :success
  end

  test "should update pokemon" do
    put pokemon_url(@pokemon),
          params: {
            pokemon: {
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
            },
          }
    assert_redirected_to pokemon_url(@pokemon)
  end

  test "should not update pokemon when missing name" do
    put pokemon_url(@pokemon),
          params: {
            pokemon: {
              name:       "",
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
            },
          }
    assert_response :unprocessable_entity
  end

  test "should destroy pokemon" do
    delete pokemon_url(@pokemon)
    assert_redirected_to root_path
  end
end