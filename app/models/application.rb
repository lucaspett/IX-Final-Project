class Application < ActiveRecord::Base
	validates :name, :contact, :address, :skills, :past_experiences, :summary, presence: true

	belongs_to :job
	belongs_to :user
end
