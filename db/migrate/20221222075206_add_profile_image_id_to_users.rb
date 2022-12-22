class AddProfileImageIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :avatar_image_id, :string
  end
end
