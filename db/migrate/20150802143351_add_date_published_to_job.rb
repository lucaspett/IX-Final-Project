class AddDatePublishedToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :date_published, :string
  end
end
