class PokemontypesController < ApplicationController

  def index
    @pokemontypes = Pokemontype.all
  end

  def show
    @pokemontype = Pokemontype.find_by(id: params[:id])
  end

  def new
  end

  def create
    @pokemontype = Pokemontype.new
    @pokemontype.character_id = params[:pokemon_id]
    @pokemontype.type_id = params[:type_id]

    if @pokemontype.save
      redirect_to "/pokemontypes/#{ @pokemontype.id }"
    else
      render 'new'
    end
  end

  def edit
    @pokemontype = Pokemontype.find_by(id: params[:id])
  end

  def update
    @pokemontype = Pokemontype.find_by(id: params[:id])
    @pokemontype.character_id = params[:pokemon_id]
    @pokemontype.type_id = params[:type_id]

    if @pokemontype.save
      redirect_to "/pokemontypes/#{ @pokemontype.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @pokemontype = Pokemontype.find_by(id: params[:id])
    @pokemontype.destroy


    redirect_to "/pokemontypes"
  end
end
