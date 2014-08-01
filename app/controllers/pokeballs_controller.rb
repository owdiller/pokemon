class PokeballsController < ApplicationController

  def index
    @pokeballs = Pokeball.all
  end

  def show
    @pokeball = Pokeball.find_by(id: params[:id])
  end

  def new
  end

  def create
    @pokeball = Pokeball.new
    @pokeball.trainer_id = params[:trainer_id]
    @pokeball.character_id = params[:pokemon_id]

    if @pokeball.save
      redirect_to "/pokeballs/#{ @pokeball.id }"
    else
      render 'new'
    end
  end

  def edit
    @pokeball = Pokeball.find_by(id: params[:id])
  end

  def update
    @pokeball = Pokeball.find_by(id: params[:id])
    @pokeball.trainer_id = params[:trainer_id]
    @pokeball.character_id = params[:pokemon_id]

    if @pokeball.save
      redirect_to "/pokeballs/#{ @pokeball.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @pokeball = Pokeball.find_by(id: params[:id])
    @pokeball.destroy


    redirect_to "/pokeballs"
  end
end
