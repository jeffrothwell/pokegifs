class PokemonController < ApplicationController

  def show
    res = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{params[:id]}/")
    body = JSON.parse(res.body)
    name = body["name"]
    id = body["id"]
    types = []
    body["types"].each { |type| types << type["type"]["name"]}
    render json: {
      "id": id,
      "name": "#{name}",
      "types": types
      }
  end

end
