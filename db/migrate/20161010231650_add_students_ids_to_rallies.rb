class AddStudentsIdsToRallies < ActiveRecord::Migration[5.0]
  def change
    add_column :rallies, :students_ids, :string
  end
end
