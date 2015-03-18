class LinksController < ApplicationController
  def show
    @links = Link.find(params[:id])
  end

  def index
    @links = Link.all
  end

  def new
    @links = Link.new
  end

  def create
    @link = Link.new(link_params)

    if @link.save
      redirect_to links_path
    else
      render :new
    end
  end

  def update
    @link = Link.find(params[:id])

    if @link.update(link_params)
      redirect_to link_path
    else
      render :edit
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    redirect_to link_path
  end

  private

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
