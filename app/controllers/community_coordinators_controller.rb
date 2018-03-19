class CommunityCoordinatorsController < ApplicationController
  def create
    @community = Community.find(params[:community_id])
    @community_coordinators = @community.community_coordinators.create(community_coordinators_params)
    redirect_to community_path(@community)
  end


  private
    def community_coordinators_params
      params.require(:community_coordinator).permit(:name, :surname, :phone, :mail, :status, :start_date, :end_date)
    end
end
