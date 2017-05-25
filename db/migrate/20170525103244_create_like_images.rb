class CreateLikeImages < ActiveRecord::Migration[5.0]
  def change
    create_table :like_images do |t|
      #
      t.integer :user_id
      t.integer :celebrity_image_id
    end
  end
end
