class UsersController < ApplicationController

  def new
   @user = User.new()
     respond_to do |format|
      format.html {render 'new'}
      format.json { render json: @user }
    end

  end
  
  def create
    @user = User.create(params[:user])
    respond_to do |format|

      if @user.save
      session[:user_id] = @user.id
      flash[:notice] ="Account Created Successfully"  
        format.html {redirect_to :index}
        format.json { render json: @user }
      else
       session[:user_id] = nil
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
