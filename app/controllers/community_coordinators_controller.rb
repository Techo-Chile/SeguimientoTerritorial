class CommunityCoordinatorsController < ApplicationController
  def create
    @community = Community.find(params[:community_id])
    @community_coordinators = @community.community_neighbors.create(community_neighbors_params)
    redirect_to community_path(@community)
  end


  private
    def community_neighbors_params
      params.require(:community_coordinator).permit(:name, :surname, :phone, :mail, :status, :start_date, :end:date)
    end
end
