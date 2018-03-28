class CommunityNeighborsController < ApplicationController
  def new
    @community = Community.find(params[:community_id])
    @community_neighbor = @community.community_neighbors.build
  end

  def edit
    @community = Community.find(params[:community_id])
    @community_neighbor = @community.community_neighbors.find(params[:id])
  end

  def create
    @community = Community.find(params[:community_id])
    @community_neighbors = @community.community_neighbors.create(community_neighbors_params)
    redirect_to community_path(@community)
  end

  def update
    @community = Community.find(params[:community_id])
    @community_neighbor = @community.community_neighbors.find(params[:id])
    @community_neighbor.update(community_neighbors_params)
    redirect_to community_path(@community)
  end

  private
    def community_neighbors_params
      params.require(:community_neighbor).permit(:name, :surname, :phone, :mail, :status)
    end
end
