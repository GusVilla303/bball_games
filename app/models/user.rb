class User < ActiveRecord::Base
  # def self.from_omniauth(auth)
  #   where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  # end

def self.from_omniauth(auth)
  if !User.find_by(twitter_id: auth['uid'])
    create_from_omniauth(auth)
  else
    User.find_by(twitter_id: auth['uid'])
  end

end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider         = auth["provider"]
      user.twitter_id       = auth["uid"]
      user.name             = auth["info"]["nickname"]
    end
  end

  private

  def user_params
    params.require(:users).permit(:provider, :uid, :nickname)
  end
end
