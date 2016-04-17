class ProfilesController < ApplicationController
  def show
    if (!File.exists?("#{Rails.root}/filestore/profiles/"+params[:id]+".yaml"))
      raise ActionController::RoutingError.new('Profile Not yet made')
    end
    @profile = YAML.load_file("#{Rails.root}/filestore/profiles/"+params[:id]+".yaml");
    p @profile
    #respond_to html
  end
end
