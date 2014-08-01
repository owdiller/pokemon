class TypesController < ApplicationController

  def index
    @types = Type.all
  end

  def show
    @type = Type.find_by(id: params[:id])
  end

  def new
  end

  def create
    @type = Type.new
    @type.name = params[:name]
    @type.img = params[:img]
    @type.type_id = params[:type_id]

    if @type.save
      redirect_to "/types/#{ @type.id }"
    else
      render 'new'
    end
  end

  def edit
    @type = Type.find_by(id: params[:id])
  end

  def update
    @type = Type.find_by(id: params[:id])
    @type.name = params[:name]
    @type.img = params[:img]
    @type.type_id = params[:type_id]

    if @type.save
      redirect_to "/types/#{ @type.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @type = Type.find_by(id: params[:id])
    @type.destroy


    redirect_to "/types"
  end
end
