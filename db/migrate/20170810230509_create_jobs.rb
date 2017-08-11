class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :about
      t.string :client
      t.string :website
      t.string :finished_on
      t.string :picture

      t.timestamps
    end
  end
end
