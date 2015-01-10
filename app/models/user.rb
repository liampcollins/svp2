class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2, :facebook, :linkedin, :twitter]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :username, :user_image
  # attr_accessible :title, :body

  has_and_belongs_to_many :programmes
  has_and_belongs_to_many :ventures
  has_many :authentications

  mount_uploader :user_image, UserImageUploader


  
  def self.find_for_twitter_oauth(auth, name, signed_in_user=nil)
    if user = signed_in_user || User.find_by_uid(auth.uid)
      user.name = name if user.name.blank?
      user.save
    elsif auth_record = Authentication.find_by_provider_and_uid(auth.provider, auth.uid)
      return auth_record.user
    else
      user = User.create do |user|
        user.name = name
        user.email = "#{uid}@email.com"
        user.uid = auth.uid
        user.password = Devise.friendly_token[0,20]
      end
    end
    if user.persisted?
      user.authentications.where(auth.slice(:provider, :uid)).first_or_create!
    end
    user
  end






  def self.find_for_oauth(kind, auth, signed_in_user=nil)

    case kind
      when "google", "facebook", "linkedin"
        if user = signed_in_user || User.find_by_email(auth.info.email)
          user.name = auth.info.name if user.name.blank?
          user.save
        elsif auth_record = Authentication.find_by_provider_and_uid(auth.provider, auth.uid)
          return auth_record.user
        else
          user = User.create do |user|
            user.name = auth.info.name
            user.email = auth.info.email
            user.user_image = auth.info.email
            user.password = Devise.friendly_token[0,20]
          end
        end
      end

      if user.persisted?
        user.authentications.where(auth.slice(:provider, :uid)).first_or_create!
      end

    user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if auth = session["devise.google_data"] || session["devise.facebook_data"]  || session["devise.linkedin_data"] || session["devise.twitter_data"] 
        user.name = auth.info.name if user.name.blank?
        user.uid = auth.uid if user.uid.blank?
        if auth.info.email
          user.email = auth.info.email if user.email.blank?
        end
      end
    end
  end
end
