class RibbitsController < ApplicationController
  def index
     @ribbits = Ribbit.all
     @ribbit = Ribbit.new
  end
  def create
    ribbit = Ribbit.new(params[:ribbit])
    ribbit.user_id = current_user.id
    flash[:error] = "Your Ribbit was over 140 characters" unless ribbit.save
    redirect_to ribbits_url
  end
end
