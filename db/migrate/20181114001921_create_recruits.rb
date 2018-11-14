class CreateRecruits < ActiveRecord::Migration[5.2]
  def change
    create_table :recruits do |t|
      t.string :type
      t.string :player_type
      t.date :ideal_start_date
      t.text :job_description
      t.string :compensation
      t.string :passport_requirements
      t.references :club, foreign_key: true

      t.timestamps
    end
  end
end
