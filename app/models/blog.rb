class Blog  < YamlRecord::Base
  # Declare your properties
  properties :title, :filename, :month, :year, :date, :author

  # Declare your adapter (local by default)
  adapter :local # or :redis

  # Declare source file path
  source Rails.root.join("filestore/blogs")
end