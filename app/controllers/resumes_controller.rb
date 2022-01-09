class ResumesController < ApplicationController
  def show
    @profile = Profile.find_by_id(params[:id])
    unless @profile
      redirect_to "/404.html"
    end
  end
end
