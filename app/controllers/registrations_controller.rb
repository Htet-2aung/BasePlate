class RegistrationsController < ApplicationController
  # This is crucial: It tells Rails to NOT require a login to see this page!
  allow_unauthenticated_access only: %i[ new create ]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # start_new_session_for is a magic Rails 8 method that logs the user in
      start_new_session_for @user
      redirect_to root_path, notice: "Welcome! You have signed up successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # Strong Parameters: Only allow safe data through the form
  def user_params
    params.require(:user).permit(:email_address, :password, :password_confirmation)
  end
end