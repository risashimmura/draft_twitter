class AddUserToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :user, :belongs
  	add_column :tweets, :to, :string 
  end
end
