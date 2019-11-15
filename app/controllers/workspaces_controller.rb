class WorkspacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index ]

  before_action :set_workspace, only: [:show, :edit, :update]

  def show
    authorize @workspace
    @booking = Booking.new
  end

  def index

    # @workspaces = Workspace.all
    @workspaces = policy_scope(Workspace).order(created_at: :asc).geocoded

    @markers = @workspaces.map do |workspace|
      {
        lat: workspace.latitude,
        lng: workspace.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { workspace: workspace })
      }
    end
    # workspace policy has scope.all , set the order of the workspaces
    if params[:query].present?
      @workspaces = policy_scope(Workspace.search_workspaces(params[:query])).order(created_at: :asc)
    else
      @workspaces = policy_scope(Workspace).order(created_at: :desc)
    end
  end

  def new
    @workspace = Workspace.new
    authorize @workspace
  end

  def create
    @workspace = Workspace.new(workspace_params)
    @workspace.user = current_user
    authorize @workspace

    if @workspace.save
      if params[:utilities].present?
        params.require(:utilities).each do |utility_id| # will have to be permitted
          @workspace.workspace_details.create(utility_id: utility_id)
        end
      end
      redirect_to workspaces_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @workspace.update(workspace_params)
    redirect_to workspace_path(@workspace)
  end

  def destroy
    @workspace.destroy(workspace_params)
    redirect_to workspace_path(@workspace)
    authorize @workspace
  end

  private

  def workspace_params
    params.require(:workspace).permit(:name, :address, :capacity, :photo, :photo_cache, :general_description, :price_per_hour)
  end

  def set_workspace
    @workspace = Workspace.find(params[:id])
    authorize @workspace
  end
end
