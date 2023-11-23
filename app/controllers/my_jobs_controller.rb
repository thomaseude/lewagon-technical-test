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
end
