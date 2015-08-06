class ApplicationsController < ApplicationController
  def create
    @job = Job.find(params[:job_id])
    @application = @job.applications.create(application_params)
    redirect_to job_path(@job), :notice => "Application Submitted!"
  end

  def destroy
    @job = Job.find(params[:job_id])
    @application = @job.applications.find(params[:id])
    @application.destroy

    redirect_to job_path(@job), :alert => "Application Destroyed"
  end
 
  private
    def application_params
      params.require(:application).permit(:name, :contact, :address, :skills, :past_experiences, :summary, :user_id, :job_id)
    end
end