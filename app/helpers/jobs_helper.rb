module JobsHelper
	def view_jobs?(job)
		job.user == current_user
	end
end