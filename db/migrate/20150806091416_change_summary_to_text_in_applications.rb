class ChangeSummaryToTextInApplications < ActiveRecord::Migration
  def change
  	change_column :applications, :summary, :text
  end
end
