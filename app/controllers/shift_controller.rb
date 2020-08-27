class ShiftController < ApplicationController

  before_action :ensure_correct_user,{only:[:update,:register]}
  before_action :check_shift,{only:[:check]}

  def register
  end

  def update
    @shift = Shift.find_by(user_id: @current_user.id)

    if !@shift
      @shift = Shift.new(user_id: @current_user.id)
    end

    @shift.mon3 = params[:mon3]
    @shift.tue3 = params[:tue3]
    @shift.wed3 = params[:wed3]
    @shift.thu3 = params[:thu3]
    @shift.fri3 = params[:fri3]
    @shift.sat3 = params[:sat3]

    @shift.mon4 = params[:mon4]
    @shift.tue4 = params[:tue4]
    @shift.wed4 = params[:wed4]
    @shift.thu4 = params[:thu4]
    @shift.fri4 = params[:fri4]
    @shift.sat4 = params[:sat4]

    @shift.mon5 = params[:mon5]
    @shift.tue5 = params[:tue5]
    @shift.wed5 = params[:wed5]
    @shift.thu5 = params[:thu5]
    @shift.fri5 = params[:fri5]
    @shift.sat5 = params[:sat5]

    @shift.mon6 = params[:mon6]
    @shift.tue6 = params[:tue6]
    @shift.wed6 = params[:wed6]
    @shift.thu6 = params[:thu6]
    @shift.fri6 = params[:fri6]
    @shift.sat6 = params[:sat6]

    @shift.mon7 = params[:mon7]
    @shift.tue7 = params[:tue7]
    @shift.wed7 = params[:wed7]
    @shift.thu7 = params[:thu7]
    @shift.fri7 = params[:fri7]
    @shift.sat7 = params[:sat7]

    @shift.mon8 = params[:mon8]
    @shift.tue8 = params[:tue8]
    @shift.wed8 = params[:wed8]
    @shift.thu8 = params[:thu8]
    @shift.fri8 = params[:fri8]
    @shift.sat8 = params[:sat8]

    @shift.mon9 = params[:mon9]
    @shift.tue9 = params[:tue9]
    @shift.wed9 = params[:wed9]
    @shift.thu9 = params[:thu9]
    @shift.fri9 = params[:fri9]
    @shift.sat9 = params[:sat9]

    @shift.save

    flash[:notice] = "シフトが送信されました"
    redirect_to("/users/#{@current_user.id}")
  end

  def check
    @shift = Shift.find_by(user_id: params[:id])
  end
end
