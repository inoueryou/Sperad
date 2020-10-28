module ApplicationCable
  class Connection < ActionCable::Connection::Base
  	identified_by :current_owner
  	identified_by :current_influencer

    def connect
      reject_unauthorized_connection unless find_verified_owner || find_verified_influencer
    end

    private
    def find_verified_owner
    	self.current_owner = Owner.find_by(id: login_owner_id)
    end
    def find_verified_influencer
    	self.current_influencer = Influencer.find_by(id: login_influencer_id)
    end

    def login_owner_id
      cookies.encrypted[Rails.application.config.session_options[:key]].dig('warden.user.owner.key', 0, 0)
    end

    def login_influencer_id
      cookies.encrypted[Rails.application.config.session_options[:key]].dig('warden.user.influencer.key', 0, 0)
    end
  end
end
