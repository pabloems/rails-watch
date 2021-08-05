class ListsController < ApplicationController
  before_action :set_list, only[:show]
  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = @list.new(list_params)

    if @list.save
      redirect_to @lists, notice: "La lista fue creada"
    else
      render :new
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :image_url)
  end
end
