class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :manager_id
      t.string :player_id

      t.timestamps
    end
  end
end
