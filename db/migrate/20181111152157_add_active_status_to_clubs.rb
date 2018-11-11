class AddActiveStatusToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :active_status, :integer, default: 0
  end
end
