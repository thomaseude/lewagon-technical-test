class MyJobsController < ApplicationController
  def index
    @jobs = current_user.jobs
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.build(job_params)
    if @job.save
      redirect_to my_jobs_path, notice: "Job created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @job = current_user.jobs.find(params[:id])
  end

  def update
    @job = current_user.jobs.find(params[:id])
    if @job.update(job_params)
      redirect_to my_jobs_path, notice: "Job updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :status)
  end
end
