class CreateDataForms < ActiveRecord::Migration[7.1]
  def change
    create_table :data_forms do |t|
      t.string :firstName
      t.string :lastName
      t.date :birthday
      t.string :gender
      t.string :email
      t.string :phoneNumber
      t.string :subject

      t.timestamps
    end
  end
end
