class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :dig, index: true
      t.references :owner, index: true

      t.timestamps
    end
  end
end
