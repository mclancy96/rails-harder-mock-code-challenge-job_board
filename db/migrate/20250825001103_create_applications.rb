class CreateApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :applications do |t|
      t.references :job, null: false, foreign_key: true
      t.references :applicant, null: false, foreign_key: true
      t.string :status
      t.text :cover_letter
      t.timestamps
    end
  end
end
