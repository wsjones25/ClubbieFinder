class AddClubReferencesToTeams < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :club, foreign_key: true
  end
end
