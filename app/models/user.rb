class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :avatar, :avatar_cache
  has_many :player_game_stat_estimates
  mount_uploader :avatar, AvatarUploader
  
  def name
    return "#{first_name} #{last_name}"
  end
end
