class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :full_name
      t.string :email
      t.string :subject
      t.string :message

      t.timestamps
    end
  end
end
