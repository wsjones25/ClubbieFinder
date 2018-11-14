class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :recruits, :type, :recruit_type
  end
end
