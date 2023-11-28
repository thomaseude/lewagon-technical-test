class AppliesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @job = Job.find(params[:job_id])
    @apply = Apply.new
  end

  def create
    Apply.create!(
      name: params_apply[:name],
      email: params_apply[:email],
      phone: params_apply[:phone],
      job_id: params[:job_id]
    )

    redirect_to jobs_path
  end

  private

  def params_apply
    params.require(:apply).permit(:name, :email, :phone, :job_id)
  end
end
