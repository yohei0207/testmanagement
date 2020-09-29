class HomeController < ApplicationController

  before_action :ensure_correct_user,{only:[:change,:shift]}

  def how
  end

  def contact
  end

  def change
  end

  def shift
  end

end
