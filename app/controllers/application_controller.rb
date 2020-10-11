class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	# ログアウト
	def after_sign_out_path_for(resource)
		case resource
		when Influencer
			new_influencer_session_path
		when Owner
			new_owner_session_path
		end
  end

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :kana_name, :email])
	end
end
