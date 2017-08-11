class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end
  def new
    @job = Job.new
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

  def destroy
  end

  def show
    @job = Job.find(params[:id])
  end

  private

  def job_params
  params.require(:job).permit(:about, :client, :website, :finished_on, :picture)
end
end
