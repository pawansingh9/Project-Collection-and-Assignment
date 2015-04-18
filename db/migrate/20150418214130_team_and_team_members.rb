class TeamAndTeamMembers < ActiveRecord::Migration
  def change
      create_table :teams do |t1|
          t1.string :team_name , unique: true
          t1.string :team_lead
      end
      
    add_index :teams, :team_name, unique: true
    
    create_table :team_members do |t2|
          t2.string :team_name
          t2.string :username
     end
    
  end
end
