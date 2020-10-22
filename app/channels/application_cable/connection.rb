module ApplicationCable
  class Connection < ActionCable::Connection::Base
  	identified_by :current_owner
  	identified_by :current_influencer

    def connect
      reject_unauthorized_connection unless find_verified_owner || find_verified_influencer
    end

    private
    def find_verified_owner
    	self.current_owner = Owner.first # env["warden"].owner
    end
    def find_verified_influencer
    	self.current_influencer = nil# env["warden"].influencer
    end
  end
end
