class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :club_name
      t.string :sport
      t.string :club_role
      t.text :main_image
      t.string :address

      t.timestamps
    end
  end
end
