class JobsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @jobs = Job.all.where(status: "open")
  end
end
