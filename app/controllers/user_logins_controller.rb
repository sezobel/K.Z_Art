class UserLoginsController < ApplicationController
  before_action :set_user_login, only: [:show, :edit, :update, :destroy]

  # GET /user_logins
  # GET /user_logins.json
  def index
    #@user_logins = UserLogin.all
    @user_logins = UserLogin.order(:name)
  end

  # GET /user_logins/1
  # GET /user_logins/1.json
  def show
  end

  # GET /user_logins/new --->>>  FLAG * if there are any issues i may need to just make it "user_logins (plural with the s on the end of login... possibly in multiple spots in this code "
  def new
    @user_login = UserLogin.new(user_params)

    respond_to do |format|
      if @user_login.save 
        format.html { redirect_to user_logins_url, 
          notice: "UserLogin #{@user_login.name} was successfully created." }
          format.json { render action: 'show', 
            status: :created, location: @user_login }
          else 
            format.html { render action: 'new'}
            format.json { render json: @user_login.errors, 
              status: :unprocessable_entity }
            end 
          end 
        end

  # GET /user_logins/1/edit
  def edit
  end

  # POST /user_logins
  # POST /user_logins.json
  def create
    @user_login = UserLogin.new(user_login_params)

    respond_to do |format|
      if @user_login.save
        format.html { redirect_to @user_login, notice: 'User login was successfully created.' }
        format.json { render :show, status: :created, location: @user_login }
      else
        format.html { render :new }
        format.json { render json: @user_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_logins/1
  # PATCH/PUT /user_logins/1.json
  def update
    respond_to do |format|
      if @user_login.update(user_login_params)
        format.html { redirect_to @user_login_url, 
          notice: 'User #{@user_login.name} login was successfully updated.' }
        format.json { head :no_content }
        #format.json { render :show, status: :ok, location: @user_login }
      else
        format.html { render :edit }
        format.json { render json: @user_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_logins/1
  # DELETE /user_logins/1.json
  def destroy
    @user_login.destroy
    respond_to do |format|
      format.html { redirect_to user_logins_url, notice: 'User login was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_login
      @user_login = UserLogin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_login_params
      params.require(:user_login).permit(:name, :password, :password_confirmation)
    end
end
