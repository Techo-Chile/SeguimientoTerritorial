class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
  end

  def new
    @community = Community.new
  end

  def edit
    @community = Community.find(params[:id])
  end

  def create
    @community = Community.new(community_params)

    if @community.save
      redirect_to @community
    else
      render 'new'
    end
  end

  def update
    @community = Community.find(params[:id])

    if @community.update(community_params)
      redirect_to @community
    else
      render 'edit'
    end
  end

  def destroy
    @community = Community.find(params[:id])
    @community.destroy

    redirect_to communities_path
  end

  private
  def community_params
    params.require(:community).permit(:country, :province_region, :municipality_location, :community_name, :community_status)
  end



end
