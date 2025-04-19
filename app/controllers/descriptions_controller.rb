class DescriptionsController < ApplicationController

  def index
      @word = Word.find(params[:word_id])
      @descriptions = @word.descriptions
  end

  def new 
    @word = Word.find(params[:word_id])
    @description = @word.descriptions.new
  end
  
  def create
    @word = Word.find(params[:word_id])
    @description = @word.descriptions.create(description_params)
    redirect_to word_path(@word)
  end

  def edit
    @word = Word.find(params[:word_id])
    @description = @word.descriptions.find(params[:id])
  end

  def update
    @word = Word.find(params[:word_id])
    @description = @word.descriptions.find(params[:id])
    if @description.update(description_params)
      redirect_to word_path(@word)
    else
      redirect_to word_path(@word), status: :unprocessable_entity
    end
  end

  def destroy
    @word = Word.find(params[:word_id])
    @description = @word.descriptions.find(params[:id])
    @description.destroy
    redirect_to word_path(@word), status: :see_other
  end

  private
    def description_params
      params.require(:description).permit(:description)
    end
end
