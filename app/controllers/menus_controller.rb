class MenusController < ApplicationController
  def index
  	@menus = Menu.all
  	@menu = Menu.new
  end

  def create
  	Menu.create(menu_params)
  	menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to menus_path
  end

  private
  def menu_params
  	params.require(:menu).permit(:title, :body)
  end
end
