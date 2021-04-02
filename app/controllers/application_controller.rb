class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
      
        before_action :configure_permitted_parameters, if: :devise_controller?
        before_action :configure_permitted_parameters_sign_up, if: :devise_controller?
      
        protected
      
        def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:account_update, keys: [:name, :nickname, :tipo, :documento, :nascimento,])
        end
        private
        def configure_permitted_parameters_sign_up
          devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :nickname, :tipo, :documento, :nascimento])
        end
end


