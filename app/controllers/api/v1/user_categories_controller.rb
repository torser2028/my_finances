class Api::V1::UserCategoriesController < ApplicationController
  before_action :set_user_category, only: %i[update destroy]

  # POST /user_categories
  def create
    @user_category = UserCategory.new(user_category_params)

    if @user_category.save
      render json: @user_category, status: :created, location: @user_category
    else
      render json: @user_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_categories/1
  def update
    if @user_category.update(user_category_params)
      render json: @user_category
    else
      render json: @user_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_categories/1
  def destroy
    @user_category.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_category
    @user_category = UserCategory.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_category_params
    params.require(:user_category).permit(:name, :user_id)
  end
end
