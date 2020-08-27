class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        @current_user = User.find_by(id:session[:user_id])
    end

    def forbid_login_user
        if @current_user
            flash[:notice] = "既にログインしています"
            redirect_to("/users/#{@current_user.id}")
        end
    end

    def ensure_correct_user
        if @current_user.id != params[:id].to_i
            flash[:notice] = "権限がありません"
            redirect_to("/users/#{@current_user.id}")
        end
    end

    def check_shift
        
        if @current_user.id != params[:id].to_i
            if @current_user.id != 4
                flash[:notice] = "権限がありません"
                redirect_to("/users/#{@current_user.id}")
            end
        end
    end
    
end
