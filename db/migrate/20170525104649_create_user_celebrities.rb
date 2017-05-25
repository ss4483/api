class CreateUserCelebrities < ActiveRecord::Migration[5.0]
  def change
    create_table :user_celebrities do |t|
      #
      t.integer :user_id
      t.integer :celebrity_id
      t.timestamps
    end
  end
end
