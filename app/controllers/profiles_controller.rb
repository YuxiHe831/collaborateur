class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to @profile
    else
      render 'new'
    end
  end

  def destroy 
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to profiles_path
  end
  
  def show
    @profile = Profile.find(params[:id])
  end

  def index
    @profiles = Profile.all
  end

  private
    def profile_params
      params.require(:profile).permit(:name, :email, :kind, :about_me, :about_you)
    end
end
