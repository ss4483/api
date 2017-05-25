Rails.application.routes.draw do
  get '/celebrities/show'
  get '/celebrities/result_save'
  # 이상형 이미지 조회 params[:user_id]
  get '/celebrities/ideal_show'

  get '/users/create'
end
