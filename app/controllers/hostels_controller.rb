class HostelsController < ApplicationController
  def index
    @hostels = Hostel.all
  end

  def show
    @hostel = Hostel.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def delete
  end
end
