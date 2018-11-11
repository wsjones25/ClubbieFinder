class CreatePros < ActiveRecord::Migration[5.2]
  def change
    create_table :pros do |t|
      t.date :date_of_birth
      t.string :nationality
      t.boolean :require_visa
      t.string :role
      t.string :sport

      t.timestamps
    end
  end
end
