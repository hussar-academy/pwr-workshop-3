class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :voter, index: true
      t.references :votable, polymorphic: true, index: true
      t.integer :amount, default: 0

      t.timestamps
    end
  end
end
