class AddFieldsToEndorsement < ActiveRecord::Migration[5.0]
  def change
    add_column :endorsements, :headline, :string
    add_column :endorsements, :name, :string
    add_column :endorsements, :description, :string
    add_column :endorsements, :category, :string
  end
end
