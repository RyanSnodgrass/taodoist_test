class AssigneesController < ApplicationController

  # GET /assignees
  # GET /assignees.json
  def index
    @assignees = Assignee.all
  end

  # GET /assignees/1
  # GET /assignees/1.json
  def show
    @assignee = Assignee.find(params[:id])
  end

  # GET /assignees/new
  def new
    @new_assignee = Assignee.new
  end

  # GET /assignees/1/edit
  def edit
    @assignee = Assignee.find(params[:id])
  end

  # POST /assignees
  # POST /assignees.json
  def create
    @new_assignee = Assignee.new(assignee_params)
    if @new_assignee.save
      redirect_to assignees_path
    else
      redirect_to new_assignee_path
    end
  end

  # PATCH/PUT /assignees/1
  # PATCH/PUT /assignees/1.json
  def update
    @assignee = Assignee.find(params[:id])
    if @assignee.update_attributes(assignee_params)
      redirect_to assignee_path
    end
  end

  # DELETE /assignees/1
  # DELETE /assignees/1.json
  def destroy
    @assignee = Assignee.find(params[:id])
    if @assignee.destroy
      redirect_to assignees_path
    else
      redirect_to assignee_path(@assignee)
    end
  end

  def search
    @assignees = Assignee.search params[:search]
  end

  def upload_file
    @assignee = Assignee.find(params[:id])
    upload_file = @assignee.avatar
    send_file upload_file.path
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def assignee_params
    params.require(:assignee).permit!
  end

end
