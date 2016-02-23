class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :voter
      t.references :quote
      t.timestamps
    end
  end
end
