class WelcomeController < ApplicationController
  def index
    @businesses = Business.all.paginate(page: params[:page], per_page: 6)
  end

  def show
    @businesses = Business.all
  end
end
