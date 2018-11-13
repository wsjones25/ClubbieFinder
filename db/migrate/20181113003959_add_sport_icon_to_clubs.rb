class AddSportIconToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :sport_icon, :text
  end
end
