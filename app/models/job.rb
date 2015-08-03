class Job < ActiveRecord::Base
	validates :title, :description, :qualifications, :contact, :date_published, presence: true
	validates :pay, numericality: {greater_than_or_equal_to: 1}

	belongs_to :user
	has_many :applications
end
