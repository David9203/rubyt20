class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :band
      t.string :album
      t.string :genere
      t.string :comments

      t.timestamps
    end
  end
end
