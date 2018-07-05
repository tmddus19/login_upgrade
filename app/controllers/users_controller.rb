class UsersController < ApplicationController
  

  def login
  end

  def sessions
    user = User.find_by(email: params[:email])
    if user &&  user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/users/login'
    end
  end

  def signup
  end

  def register
    #회원가입을 시킨다. == User 데이터베이스에 유저 정보를 저장한다.
    user = User.new(
      email: params[:email],
      password: params[:password]
    )
    user.save
    
  
    
    redirect_to '/'
  end
end
