class AddDateAchievedToEndorsement < ActiveRecord::Migration[5.0]
  def change
    add_column :endorsements, :date_achieved, :date
  end
end
