class ChangePastExperiencesToTextInApplications < ActiveRecord::Migration
  def change
  	change_column :applications, :past_experiences, :text
  end
end
