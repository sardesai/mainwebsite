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
    p @profile
  end

  def create
    parsed_prof = params[:profile].symbolize_keys
    p parsed_prof
    @profile = Profile.new(parsed_prof)
    @profile.save
=begin
    if (prof.save)
      p "saved successfully"
      redirect_to prof
    else
      p "error saving"
    end
=end
  end

  def index
    @profiles = Profile.all
    p @profiles

    #proftosave = Profile.create(@profiles)
    #p proftosave
    #proftosave.save

  end

  def new
    @profiles = Profile.new
  end

end
