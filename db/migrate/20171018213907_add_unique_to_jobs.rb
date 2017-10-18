class AddUniqueToJobs < ActiveRecord::Migration[5.1]
  def change
    add_index :jobs, :slug, unique: true
  end
end
