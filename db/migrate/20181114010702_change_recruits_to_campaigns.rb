class ChangeRecruitsToCampaigns < ActiveRecord::Migration[5.2]
  def change
  	rename_table :recruits, :campaigns
  end
end
