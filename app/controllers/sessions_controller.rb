class SessionsController < ApplicationController
  def new
  end
  
   def index
    @meetups = Meetup.joins("LEFT OUTER JOIN meetupdetails ON meetupdetails.meetup_id = meetups.id where meetupdetails.answer is null and 	    meetupdetails.user_id = ", session[:userid].to_s)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meetups }
    end
  end

  def create
    user = User.authenticate(params[:name], params[:password])
    if user
      session[:userid] = user.id
      redirect_to meetups_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid username or password"
      render "new"
    end
  end
  
  def destroy
    session[:userid] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
