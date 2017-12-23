class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  	protect_from_forgery with: :exception
  
    def current_user
      super || guest_user
    end


  protected
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit(:sign_in, keys: [:user_name, :password])	

    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
  
  private
  def guest_user
    User.find_by_id(session[:guest_user_id].nil? ? session[:guest_user_id] = create_guest_user.id : session[:guest_user_id]) || session[:guest_user_id] = create_guest_user.id
  end

  def create_guest_user
  	u = User.create(user_name: "guest",email: "guest_#{Time.now.to_i}#{rand(99)}@example.com")
  	u.save(validate: false)
 	  u
  end
end
