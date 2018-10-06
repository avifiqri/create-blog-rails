class ApplicationController < ActionController::Base

    include Pundit
    rescue_from Pundit::NotAuthorizedError, with: :pundit_error
    before_action :configure_permitte_parameter, if: :devise_controller?

    
    private
    def pundit_error
    flash[:notice] = "anda tidak memiliki akses"
    redirect_to root_path
    end
    def configure_permitte_parameter
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name] )
    end

end
