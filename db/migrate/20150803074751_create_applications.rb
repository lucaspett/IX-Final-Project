class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :contact
      t.string :address
      t.string :skills
      t.string :past_experiences
      t.string :summary

      t.timestamps null: false
    end
  end
end
