class AddEvidenceToEndorsements < ActiveRecord::Migration[5.0]
  def change
    add_reference :endorsements, :evidence, foreign_key: true
  end
end
