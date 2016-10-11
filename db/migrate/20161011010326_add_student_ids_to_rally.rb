class AddStudentIdsToRally < ActiveRecord::Migration[5.0]
  def change
    add_column :rallies, :student_ids, :string
  end
end
