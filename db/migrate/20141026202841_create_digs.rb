class CreateDigs < ActiveRecord::Migration
  def change
    create_table :digs do |t|
      t.string :title
      t.text :body
      t.integer :owner_id

      t.timestamps
    end
  end
end
