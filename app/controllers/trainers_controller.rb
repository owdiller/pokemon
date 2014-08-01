class TrainersController < ApplicationController

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find_by(id: params[:id])
  end

  def new
  end

  def create
    @trainer = Trainer.new
    @trainer.name = params[:name]
    @trainer.img = params[:img]
    @trainer.trainer_id = params[:trainer_id]

    if @trainer.save
      redirect_to "/trainers/#{ @trainer.id }"
    else
      render 'new'
    end
  end

  def edit
    @trainer = Trainer.find_by(id: params[:id])
  end

  def update
    @trainer = Trainer.find_by(id: params[:id])
    @trainer.name = params[:name]
    @trainer.img = params[:img]
    @trainer.trainer_id = params[:trainer_id]

    if @trainer.save
      redirect_to "/trainers/#{ @trainer.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @trainer = Trainer.find_by(id: params[:id])
    @trainer.destroy


    redirect_to "/trainers"
  end
end
