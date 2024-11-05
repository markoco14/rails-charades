class DescriptionsController < ApplicationController
  def create
    @word = Word.find(params[:word_id])
    @description = @word.descriptions.create(description_params)
    redirect_to word_path(@word)
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
