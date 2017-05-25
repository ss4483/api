class CreateCelebrityImages < ActiveRecord::Migration[5.0]
  def change
    create_table :celebrity_images do |t|
      t.string :image_url
      t.integer :ranking, default: 0
      # 1:N - celebrity - celebrity_images
      t.integer :celebrity_id


      t.timestamps
    end
  end
end
