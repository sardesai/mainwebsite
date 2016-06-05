class SocialProfs < ActiveHash::Base
  include ActiveHash::Associations
  belongs_to :profile
end