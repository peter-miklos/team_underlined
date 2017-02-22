class CreateEvidences < ActiveRecord::Migration[5.0]
  def change
    create_table :evidences do |t|
      t.string :headline
      t.text :description
      t.date :date_achieved
      t.string :category

      t.timestamps
    end
  end
end
