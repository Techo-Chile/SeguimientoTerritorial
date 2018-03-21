class CommunityCoordinatorsController < ApplicationController
  def create
    @community = Community.find(params[:community_id])
    @community_coordinators = @community.community_coordinators.create(community_coordinators_params)
    redirect_to community_path(@community)
  end

  def edit
    @community = Community.find(params[:community_id])
    @community_coordinator = @community.community_coordinators.find(params[:id])
  end

  def update
    @community = Community.find(params[:id])
    @community_coordinator = @community.community_coordinators.find(params[:id])
    if @community_coordinator.update(community_community_coordinator_params)
      render 'edit'
    else
      redirect_to @community
    end
  end

  private
    def community_coordinators_params
      params.require(:community_coordinator).permit(:name, :surname, :phone, :mail, :status, :start_date, :end_date)
    end
end
