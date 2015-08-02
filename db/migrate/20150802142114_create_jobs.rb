class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :qualifications
      t.integer :pay
      t.string :contact

      t.timestamps null: false
    end
  end
end
