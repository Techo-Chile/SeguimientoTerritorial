class CommunityCoordinatorsController < ApplicationController
  def new
    @community = Community.find(params[:community_id])
    @community_coordinator = @community.community_coordinators.build
  end

  def edit
    @community = Community.find(params[:community_id])
    @community_coordinator = @community.community_coordinators.find(params[:id])
  end

  def create
    @community = Community.find(params[:community_id])
    @community_coordinators = @community.community_coordinators.create(community_coordinators_params)
    redirect_to community_path(@community)
  end

  def update
    @community = Community.find(params[:community_id])
    @community_coordinator = @community.community_coordinators.find(params[:id])
    @community_coordinator.update(community_coordinators_params)
    redirect_to community_path(@community)
  end

  private
    def community_coordinators_params
      params.require(:community_coordinator).permit(:name, :surname, :phone, :mail, :status, :start_date, :end_date)
    end
end
