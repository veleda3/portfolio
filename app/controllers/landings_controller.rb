class LandingsController < ApplicationController
  layout false, only: [:new, :create]
  def index
  end

  def new
    @meta_title = meta_title 'schedule your your marketing and/or web development call'
    @meta_description = 'facebook marketing, web development, and video animations for your business'
    @landing = Landing.new
  end

  def create
    @landing = Landing.new(landing_params)

    respond_to do |format|
      if @landing.save
        format.html { redirect_to :landings, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @landing }
      else
        format.html { render :new }
        format.json { render json: @landing.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def landing_params
      params.require(:landing).permit(:full_name, :email, :phone_number, :topic)
    end
end
