class JobsController < ApplicationController
	before_action :authenticate_user!, except: [:about, :contact]
	before_action :require_permission, only: [:edit, :update, :destroy]

	def index
		@query = params[:query].presence

		if @query
			@jobs = Job.fuzzy_search(@query)
		else
			@jobs = Job.all
		end

		@jobs = @jobs.order(created_at: :desc)
	end

	def show
		@job = Job.find(params[:id])
		@applications = @job.applications
	end

	def new
		@job = Job.new
	end

	def create
		@job = current_user.jobs.build(job_params)

		if @job.save
			redirect_to @job
		else
			render 'new'
		end
	end

	def edit
		@job = Job.find(params[:id])
	end

	def update
		@job = Job.find(params[:id])

		if @job.update(job_params)
			redirect_to job_path(@job)
		else
			render 'edit'
		end
	end

	def destroy
		@job = Job.find(params[:id])
		@job.destroy

		redirect_to jobs_path
	end 

	def your_posts
		@jobs = current_user.jobs
	end

	def about
	end

	def contact
	end

	private

	def require_permission
	  if current_user != Job.find(params[:id]).user
	    redirect_to jobs_path, alert: "This job is not yours to change!"
	  end
	end

	def job_params
		params.require(:job).permit(:title, :description, :qualifications, :pay, :contact, :date_published, :accepted, :user_id)
	end
end