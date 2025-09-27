require 'poke-api-v2'

puts "Welcome to PokeRuby"

puts "What pokemon you want to search?" # Take input from the user and return the name to the user

poke_name = gets.chomp

poke_id = {

:id => PokeApi.get(pokemon:"#{poke_name}").id, 
:name => PokeApi.get(pokemon:"#{poke_name}").name,
:height => PokeApi.get(pokemon:"#{poke_name}").height,
:abilities => PokeApi.get(pokemon:"#{poke_name}").abilities.first.ability.name,
:type => PokeApi.get(pokemon:"#{poke_name}").types.first.type.name,
:gen => PokeApi.get(pokemon:"#{poke_name}").game_indices.first.version.name

}

poke_ruby = "
ID:#{poke_id[:id]}
Pokemon:#{poke_id[:name]}
Height:#{poke_id[:height]}
Abilities:#{poke_id[:abilities]}
Type:#{poke_id[:type]}
Gen:#{poke_id[:gen]}
"

puts poke_ruby
