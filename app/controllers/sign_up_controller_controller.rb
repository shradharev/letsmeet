class SignUpControllerController < ApplicationController
 def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /meetups/new
  # GET /meetups/new.json
  def new
    @user = User.new
	@user.name
	

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /meetups/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /meetups
  # POST /meetups.json
  def create
    @user = User.new(params[:name])

    respond_to do |format|
      if @user.save

		data = {'message' => 'New User Created!'}
		Pusher['my_notifications'].trigger('notification', data)
		Pusher['new_invitations'].trigger('data-changed', @user.id)

        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meetups/1
  # PUT /meetups/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:meetup])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetups/1
  # DELETE /meetups/1.json
  def destroy
    @user = Meetup.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to meetups_url }
      format.json { head :no_content }
    end
  end
end
