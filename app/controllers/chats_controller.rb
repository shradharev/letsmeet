class ChatsController < ApplicationController

  
  
  # POST /meetups
  # POST /meetups.json
  def create
    @meetup = Meetup.new(params[:meetup])
    @chat = Chat.new


    respond_to do |format|
      if @chat.save

        redirect_to meetup_path(110)
      else
        format.html { render action: "new" }
        format.json { render json: @meetup.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
