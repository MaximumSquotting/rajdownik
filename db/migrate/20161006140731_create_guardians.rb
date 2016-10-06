class CreateGuardians < ActiveRecord::Migration[5.0]
  def change
    create_table :guardians do |t|
      t.string :name
      t.string :affilation
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
