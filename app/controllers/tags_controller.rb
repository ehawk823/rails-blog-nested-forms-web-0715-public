class TagsController < ApplicationController

  # GET /tags
  # GET /tags.json
  def index
    @tags = Tag.all
  end

  def create
    binding.pry
    Tag.create(tag_params)
    redirect_to
  end

  # GET /tags/1
  # GET /tags/1.json
  def show
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:user).permit(:name)
  end

end
