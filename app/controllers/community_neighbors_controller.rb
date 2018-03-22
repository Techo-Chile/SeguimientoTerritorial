class CommunityNeighborsController < ApplicationController
    def create
      @community = Community.find(params[:community_id])
      @community_neighbors = @community.community_neighbors.create(community_neighbors_params)
      redirect_to community_path(@community)
    end

    def new
      @community = Community.find(params[:community_id])
    end

    def edit
      @community = Community.find(params[:community_id])
      @community_neighbor = @community.community_neighbors.find(params[:id])
    end
    def edit2
    end

    def update
      @community = Community.find(params[:id])
      @community_neighbor = @community.Community_neighbors.find(params[:id])
    end


    private
      def community_neighbors_params
        params.require(:community_neighbor).permit(:name, :surname, :phone, :mail, :status)
      end
end
