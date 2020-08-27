class UsersController < ApplicationController

  before_action :forbid_login_user,{only:[:login_form,:login]}
  before_action :ensure_correct_user,{only:[:show,:edit]}
  before_action :check_shift,{only:[:index]}
  before_action :check_super,{only:[:all,:superedit]}

  def index
    @user = User.all
  end

  def show
    @user = User.find_by(id:params[:id])
  end

  def login_form
  end

  def login 
    @user = User.find_by(name: params[:name],password: params[:password])
    if @user
      flash[:notice] = "ログインに成功しました"
      session[:user_id] = @user.id
      redirect_to("/users/#{@user.id}")
    else
      @error_message = "名前またはパスワードが間違っています"
      @name = params[:name]
      @password = params[:password]
      render("/users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to("/")
  end

  def edit
  end

  def update
    password = params[:password]
    if password == @current_user.password
      if params[:new_password] != params[:new_password_again]
        @error_message = "新しいパスワードが違います"
        render("/users/edit")
      else
        @current_user.name = params[:name]
        @current_user.password = params[:new_password]
        @current_user.save
        flash[:notice] = "変更が完了しました"
        redirect_to("/users/#{@current_user.id}")
      end
    else
      @error_message = "現在のパスワードが違います"
      render("/users/edit")
    end
  end

  def register

    if params[:password] == params[:password_again]
      @user = User.new(name:params[:name], password:params[:password])
      if @user.save
        flash[:notice] = "アカウントが作成されました"
        session[:user_id] = @user.id
        redirect_to("/users/#{@user.id}")
      else
        @error_message = "正しく入力してください"
        redirect_to("/users/signup")
      end

    else
      @error_message = "入力されたパスワードが異なります"
      redirect_to("/users/signup")
    end
  end

  def all
    @users = User.all
  end

  def superedit
    @user = User.find_by(id:params[:id])
  end

  def destroy
    @user = User.find_by(id:params[:id])
    @user.destroy
    redirect_to("/users/all")
  end

end
