class WorkTablesController < ApplicationController
  
  def create
    @community = Community.find(params[:community_id])
    @work_tables = @community.work_tables.create(work_tables_params)
    redirect_to community_path(@community)
  end

  private
    def work_tables_params
      params.require(:work_table).permit(:periodicity, :start_date, :end_date, :next_renovation, :status)
    end
end
