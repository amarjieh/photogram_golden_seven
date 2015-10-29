class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
  	@photo_id = params[:id]
  	i = Photo.find_by({ :id => @photo_id })
  end

  def new_form
  end

  def create_row
	i = Photo.new
	i.source = params[:the_source]
	i.caption = params[:the_caption]
	i.save
  	#render("create_row.html.erb")
	redirect_to("http://localhost:3000/photos")
  end

  def destroy
  	@photo_id = params[:id]
  	i = Photo.find_by({ :id => @photo_id })
  	i.destroy
  	redirect_to("http://localhost:3000/photos")
  end

  def edit_form
  	@photo_id = params[:id]
  	i = Photo.find_by({ :id => @photo_id })
  end

  def update_row
  	@photo_id = params[:id]
  	i = Photo.find_by({ :id => @photo_id })
  	i.source = params[:the_source]
  	i.caption = params[:the_source]
  	i.save
  	redirect_to("http://localhost:3000/photos/")
  end
end
