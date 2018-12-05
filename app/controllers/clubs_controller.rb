class ClubsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_club, only: [:edit, :update]
  
  layout "admin"
  
    def new
      @club = Club.new
    end
    
    def create
      @club = Club.new(club_params)
      if @club.save
         flash[:success] = "Your club has been created!"
         redirect_to dashboard_path
      else
         flash[:danger] = @club.errors.full_messages.join(", ")
         render 'new'
      end  
    end
    
    def edit
    
    end
    
    def update
      if @club.update(club_params)
        flash[:success] = "Your club information was successfully updated!"
        redirect_to root_path
      else
        flash[:danger] = @club.errors.full_messages.join(", ")
        render 'edit'
      end
    end
    
  def remove_image
    @club = Club.find(params[:id])
    case params[:item]
      when "bg_image"
        @club.bg_image = nil
      when "events_banner_img"
        @club.events_banner_img = nil
      when "news_banner_img"
        @club.news_banner_img = nil
      when "gallery_banner_img"
        @club.gallery_banner_img = nil
      when "news_banner_img"
        @club.news_banner_img = nil
      when "about_banner_img"
        @club.about_banner_img = nil
      when "contact_banner_img"
        @club.contact_banner_img = nil
      when "club_logo"
        @club.club_logo = nil
    end
    if @club.save
      flash[:danger] = "Your picture has been removed."
      redirect_to edit_club_path(@club)
    end
  end
    
    private
    
    def club_params
       params.require(:club).permit(:club_name, :charity_number, :club_leader, :contact_email, :postal_address, :policies, :club_logo, :bg_image, :news_banner_img, :events_banner_img, :gallery_banner_img, :about_banner_img, :contact_banner_img, :bg_position, :contact_number, :meeting_time, :meeting_address, :facebook_link, :twitter_link, :donate_link , :latitude, :longitude) 
    end
    
    def set_club
      @club = Club.find(params[:id])
    end
    
end