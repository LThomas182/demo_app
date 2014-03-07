class CreateMircrposts < ActiveRecord::Migration
  def change
    create_table :mircrposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
