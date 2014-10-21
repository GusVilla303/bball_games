class User < ActiveRecord::Base
  has_many :user_events
  has_many :events, through: :user_events

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
      user.image            = auth["info"]["image"]
    end
  end

  private

  def user_params
    params.require(:users).permit(:provider, :uid, :nickname, :image)
  end
end
