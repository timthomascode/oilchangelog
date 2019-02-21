class UsersController < Clearance::UsersController
  def new
    if Clearance.configuration.allow_sign_up?
      @user = user_from_params
      render template: "users/new"
    else
      redirect_to root_path
    end
  end
  
  def create
    @user = user_from_params

    if @user.save
      sign_in @user
      redirect_back_or url_after_create
    else
      flash.now.notice = @user.errors.full_messages.join("<br/>").html_safe
      render template: "users/new"
    end
  end
end