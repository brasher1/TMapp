class MainController < ApplicationController
  def index
  end

  def default
    redirect_to "/main"
  end
end
