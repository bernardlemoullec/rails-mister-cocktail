# frozen_string_literal: true

# Documentation: Missing top-level class documentation comment.
class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @ingredient = Ingredient.new
    @dose = Dose.new
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  # def update
  #   @cocktail = Cocktail.find(params[:id])
  #   @cocktail.update(cocktail_params)
  #   redirect_to cocktail_path(@cocktail)
  # end

  # def update
  #   if @cocktail.update(cocktail_params)
  #     redirect_to cocktail_path(@cocktail)
  #   else
  #     render :edit
  #   end
  # end

  # def edit
  #   @cocktail = Cocktail.find(params[:id])
  # end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
