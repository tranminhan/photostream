class ChangeUsernameToPhotos < ActiveRecord::Migration
  def change
    rename_column :photos, :usernme, :username
  end
end
