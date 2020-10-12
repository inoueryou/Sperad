class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	# ログアウト後
	def after_sign_out_path_for(resource)
		case resource
		when :influencer
			new_influencer_session_path
		when :owner
			new_owner_session_path
		else
			influencer_top_path
		end
  end

	# ログイン後
	def after_sign_in_path_for(resource)
		case resource
		when Influencer
			influencer_top_path
		when Owner
			owner_top_path
		else
			owner_top_path
		end
	end

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :kana_name, :email])
	end
end
