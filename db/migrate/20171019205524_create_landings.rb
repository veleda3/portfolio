class CreateLandings < ActiveRecord::Migration[5.1]
  def change
    create_table :landings do |t|
      t.string :full_name
      t.string :company_name
      t.string :phone_number
      t.string :email
      t.string :topic

      t.timestamps
    end
  end
end
