class ProfilesController < ApplicationController
  def show
=begin
   if (!File.exists?("#{Rails.root}/filestore/profiles/"+params[:id]+".yaml"))
      #raise ActionController::RoutingError.new('Profile Not yet made')
      render file: "public/profile_missing.html"
      return
    end
    @profile = YAML.load_file("#{Rails.root}/filestore/profiles/"+params[:id]+".yaml");
    p @profile
    #respond_to html
=end
    @profile = Profile.find(params[:id])
  end

  def create
    parsed_prof = params[:profile].symbolize_keys
    @profile = Profile.new(parsed_prof)
    if @profile.save
      redirect_to post_path(@profile)
    else
      render "new"
    end
  end

  def index
    @profiles = Profile.all
    p @profiles
  end

  def new
    @profiles = Profile.new
  end

end
