class PagesController < ApplicationController

  def home
  	@users = User.all
  	@user = User.count + 1

  end

end
