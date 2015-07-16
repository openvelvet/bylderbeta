class PagesController < ApplicationController

  def home
  	@users = User.all
  	@user = User.count + 1
  end

  def new
  	@page = Page.new
  end

  def create
  	@page = Page.new(page_params)

  	respond_to do |format|
  		if @page.save
  			format.html { redirect_to thank_you_path, notice: "You successfully joined the prelaunch list"}
  		else
  			format.html { render :new }
  		end
  	end
  end

  private

  def page_params
  	params.require(:page).permit(:email)
  end


end
