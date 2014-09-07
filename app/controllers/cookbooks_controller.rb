class CookbooksController < ApplicationController
  before_action :authenticate_with_basic_auth

  def index
    @cookbooks = Cookbook.order(id: :desc)
    @chef = current_user
    @cookbook = Cookbook.new
  end

  def show
    @cookbook = Cookbook.find(params[:id])
    @recipe = Recipe.new
  end

  def create
    Cookbook.create(cookbook_attributes)
    redirect_to cookbooks_path
  end

end
