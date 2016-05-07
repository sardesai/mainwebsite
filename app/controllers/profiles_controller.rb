class ProfilesController < ApplicationController
  def show
    if (!File.exists?("#{Rails.root}/filestore/profiles/"+params[:id]+".yaml"))
      #raise ActionController::RoutingError.new('Profile Not yet made')
      render file: "public/profile_missing.html"
      return
    end
    @profile = YAML.load_file("#{Rails.root}/filestore/profiles/"+params[:id]+".yaml");
    p @profile
    #respond_to html
  end
end
