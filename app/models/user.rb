class User < ActiveRecord::Base
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider   = auth["provider"].to_s
      user.uid        = auth["uid"].to_s
      user.name       = auth["user_info"]["name"].to_s
      user.email      = auth["user_info"]["email"].to_s
      user.avatar_url = auth["user_info"]["image"].to_s
    end
  end

end
