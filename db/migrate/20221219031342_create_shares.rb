class CreateShares < ActiveRecord::Migration[6.1]
  def change
    create_table :shares do |t|
      t.text :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
