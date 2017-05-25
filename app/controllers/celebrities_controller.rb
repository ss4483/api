class CelebritiesController < ApplicationController
# 2페이지
  def show
    celebrities = Celebrity.all

    render json: celebrities
  end

  def result_save
    user = User.find(params(:user_id))

    celebrity = Celebrity.find(params(:celebrity_id))
    user.celebrities << celebrity

    render json: user
  end

# 3페이지
  def ideal_show
    a = Hash.new
    c = User.find(params[:user_id]).celebrities
    c.each do |c|
      celeb_image = { "#{c.name}" => c.celebrity_images }

      a.merge!(celeb_image)
    end
    render json: CelebrityImage.all
  end

  def ideal_save

    image = CelebrityImage.find(params[:celebrity_image_id])
    image.ranking = params[:ranking]
    image.save

  end
end
