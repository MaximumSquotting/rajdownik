class AddAdditionalFieldsToRegistration < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :accepted_terms, :boolean, null: false, default: false
    add_column :registrations, :signed_declaration, :boolean, null: false, default: false
    add_column :registrations, :additional_notes, :string
  end
end
