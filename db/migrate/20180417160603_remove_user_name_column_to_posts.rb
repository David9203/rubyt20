class RemoveUserNameColumnToPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :user_name, :string
    
  end
end
