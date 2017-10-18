class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.most_recent
    @meta_title = meta_title 'All the web development work done'
    @meta_description = 'All web development and facebook marketing work that has been done by velezda.com'
  end

  def show
    @meta_title = meta_title @job.title
    tracker do |t|
      t.facebook_pixel :track, { type: 'PageView', options: { p: 'my_way' } }
    end

  end

  def new
    @job = Job.new
  end

  def edit
    @job = Job.find(params[:id])
  end

  def create
    job = Job.new(job_params)

    if job.save
      redirect_to jobs_path, :flash => { notice: "Thank you for adding a job" }
    else
      errors = job.errors.full_messages
      redirect_to new, :flash => { error: errors }
    end
  end

  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_job
    @job = Job.friendly.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:about, :client, :website, :finished_on, :picture, :title)
  end
end
