class AddTitleToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :title, :string
  end
end
