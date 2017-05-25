class CelebritiesController < ApplicationController
  def index

  end
  def create
    Celebrity.create
  end
  def create_image
    CelebrityImage.create
  end

  def show
    celebrity = Celebrity.all

    render json: celebrity
  end


  def ideal_show
    a = Hash.new
    c = User.find(params[:user_id]).celebrity
    c.each do |c|
      celeb_image = { "#{c.name}" => c.celebrity_images }

      a.merge!(celeb_image)
    end
    render json: a
  end

  def result_save
    user = User.find(params(:user_id))
    celebrity = Celebrity.find(params(:celebrity_id))
    user.celebrity << celebrity
  end
end
