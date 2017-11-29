class HostelsController < ApplicationController
  def index
    search = params[:search]

    if !search[:address_search].blank?
      @hosels = Hostel.near(search[:address_search], 20)
    else
      @hostels = Hostel.all
    end

    @hash = Gmaps4rails.build_markers(@hostels) do |hostel, marker|
      marker.lat office.latitude
      marker.lng office.longitude
      marker.infowindow render_to_string(partial: "/hostels/map_box", locals: { hostel: hostel })
    end
  end

  def show
    @hostel = Hostel.find(params[:id])


    @hash = Gmaps4rails.build_markers(@hostels) do |hostel, marker|
      marker.lat office.latitude
      marker.lng office.longitude
      marker.infowindow render_to_string(partial: "/hostels/map_box", locals: { hostel: hostel })

    end
  end

  def new
    @hostel = Message.new
  end

  def create
    @hostel = Hostel.new(hostel_parms)
    @hostel.user = current_user
    if hostel.save
      redirect_to @hostel
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def delete
  end

  private

  def hostel_arams
    params.require(:hostel).permit(:location, :name, :price, :headline, :picture, :rating, :category, :picture)
end
