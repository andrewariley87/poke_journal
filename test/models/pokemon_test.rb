require 'test_helper'

class PokemonTest < ActiveSupport::TestCase
  setup do
    @charizard = pokemon(:charizard)
  end

  test 'Pokemon#hp returns the value for hp in stats' do
    assert_equal @charizard.hp, @charizard.stats['hp']
  end

  test 'Pokemon#attack returns the value for attack in stats' do
    assert_equal @charizard.attack, @charizard.stats['attack']
  end

  test 'Pokemon#defense returns the value for defense in stats' do
    assert_equal @charizard.defense, @charizard.stats['defense']
  end

  test 'Pokemon#speed returns the value for speed in stats' do
    assert_equal @charizard.speed, @charizard.stats['speed']
  end

  test 'Pokemon#special_attack returns the value for special_attack in stats' do
    assert_equal @charizard.special_attack, @charizard.stats['special_attack']
  end

  test 'Pokemon#special_defense returns the value for special_defense in stats' do
    assert_equal @charizard.special_defense, @charizard.stats['special_defense']
  end
end
