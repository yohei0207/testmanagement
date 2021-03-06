class ApplicationController < ActionController::Base
    before_action :set_current_user

    http_basic_authenticate_with :name => ENV['BASIC_AUTH_USERNAME'], :password => ENV['BASIC_AUTH_PASSWORD'] if Rails.env == "production"

    

    def set_current_user
        @current_user = User.find_by(id:session[:user_id])
    end

    def forbid_login_user
        if @current_user
            flash[:notice] = "既にログインしています"
            #redirect_to("/users/#{@current_user.id}")
            redirect_to("/home/#{@current_user.id}/shift")
        end
    end

    def ensure_correct_user
        if @current_user.id != params[:id].to_i
            flash[:notice] = "権限がありません"
            #redirect_to("/users/#{@current_user.id}")
            redirect_to("/home/#{@current_user.id}/shift")
        end
    end

    def check_shift
        
        if @current_user.id != params[:id].to_i
            if @current_user.id != 2
                flash[:notice] = "権限がありません"
                #redirect_to("/users/#{@current_user.id}")
                redirect_to("/home/#{@current_user.id}/shift")
            end
        end
    end

    def check_super
        if @current_user.id != 1
        
            flash[:notice] = "権限がありません"
            #redirect_to("/users/#{@current_user.id}")
            redirect_to("/home/#{@current_user.id}/shift")
            
        end
    end
    
end
