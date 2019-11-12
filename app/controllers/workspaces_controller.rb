class WorkspacesController < ApplicationController
  before_action :set_workspace, only: [:show, :edit, :update]
  def show
    set_workspace
  end

  def index
    @workspaces = Workspace.all
  end

  def new
    @workspace = Workspace.new
  end

  def create
    @workspace = Workspace.new(workspace_params)

    if @workspace.save
      redirect_to workspaces_path
    else
      render :new
    end
  end

  def edit
    set_workspace
  end

  def update
    set_workspace
    @workspace.update(workspace_params)
    redirect_to workspace_path(@workspace)
  end

  private

  def workspace_params
    params.require(:workspace).permit(:name, :address, :capacity, :image)
  end

  def set_workspace
    @workspace = Workspace.find(params[:id])
    authorize @workspace
  end
end
