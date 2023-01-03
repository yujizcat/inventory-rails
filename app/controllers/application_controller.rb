class ApplicationController < ActionController::Base
    # skip_before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
        if session[:user_return_to] == nil
            p "aaaaaa"
          # root_path
          redirect_to "/users/sign_out"
        else
          super
        end
      end

      def after_sign_out_path_for(resource)  
            root_path
      end
      
    protected
    def configure_permitted_parameters
        # For additional fields in app/views/devise/registrations/new.html.erb
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
end
