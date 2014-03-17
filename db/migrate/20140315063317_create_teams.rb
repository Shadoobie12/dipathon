class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :member_1
      t.string :member_2

      t.timestamps
    end
  end
end
