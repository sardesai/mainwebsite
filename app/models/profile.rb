class Profile  < YamlRecord::Base
  # Declare your properties
  properties :persisted, :name, :bragwords, :coverpic, :profilepic, :twitter, :linkedin, :facebook, :googleplus, :email, :id

  # Declare your adapter (local by default)
  adapter :local # or :redis

  # Declare source file path
  source Rails.root.join("filestore/profiles")
end