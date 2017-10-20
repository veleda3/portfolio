class LandingController < ApplicationController
  layout false, only: [:new]
  def index
  end

  def new
    @landing = Landing.new
  end
end
