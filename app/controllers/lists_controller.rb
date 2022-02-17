class ListsController < ApplicationController
  def index
    if params[:query].present?
      @query = params[:query]
      @lists = List.where("name ILIKE ?","%#{params[:query]}%")
    else
      @lists = List.all
    end
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  def show
  end
end
