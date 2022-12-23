class AddUserRefToShares < ActiveRecord::Migration[6.1]
  def change
    add_reference :shares, :user, null: false, foreign_key: true
  end
end
