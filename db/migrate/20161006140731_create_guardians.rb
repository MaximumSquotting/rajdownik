class CreateGuardians < ActiveRecord::Migration[5.0]
  def change
    create_table :guardians do |t|
      t.string :name , null: false
      t.string :affilation, null: false
      t.string :phone_number, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
