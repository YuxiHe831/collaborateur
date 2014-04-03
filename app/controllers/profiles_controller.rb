class ProfilesController < ApplicationController
  def new
  end

  def create
    render text: params[:profiles].inspect
  end
end
