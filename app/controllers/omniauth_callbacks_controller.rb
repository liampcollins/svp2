class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def google_oauth2
    handle_callback "google"
  end

  def facebook
    handle_callback "facebook"
  end

  def twitter
    handle_callback "twitter"
  end

  def linkedin
    handle_callback "linkedin"
  end


  def handle_callback(kind)
    # You need to implement the method below in your model (e.g. app/models/user.rb)

    if kind == "twitter"
      # binding.pry
      @user = User.find_for_twitter_oauth(request.env["omniauth.auth"], request.env["omniauth.auth"].extra.raw_info.name, current_user)

      # @user = User.find_for_oauth(kind, request.env["omniauth.auth"], current_user)

      if @user.persisted?
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => kind.titleize
        sign_in_and_redirect @user, :event => :authentication
      else
        session["devise.#{kind}_data"] = request.env["omniauth.auth"].except("extra")
        redirect_to new_user_registration_url
      end

    else
      @user = User.find_for_oauth(kind, request.env["omniauth.auth"], current_user)

      if @user.persisted?
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => kind.titleize
        sign_in_and_redirect @user, :event => :authentication
      else
        session["devise.#{kind}_data"] = request.env["omniauth.auth"]
        redirect_to new_user_registration_url
      end
    end
  end
end