class ToDosController < ApplicationController

  # GET /to_dos
  # GET /to_dos.json
  def index
    @to_dos = ToDo.all
  end

  # GET /to_dos/1
  # GET /to_dos/1.json
  def show
    @to_do = ToDo.find(params[:id])
  end

  # GET /to_dos/new
  def new
    @new_to_do = ToDo.new
  end

  # GET /to_dos/1/edit
  def edit
    @to_do = ToDo.find(params[:id])
  end

  # POST /to_dos
  # POST /to_dos.json
  def create
    @new_to_do = ToDo.new(to_do_params)
    if @new_to_do.save
      redirect_to to_dos_path 
    else
      redirect_to new_to_do_path
    end
  end

  # PATCH/PUT /to_dos/1
  # PATCH/PUT /to_dos/1.json
  def update
    @to_do = ToDo.find(params[:id])
    if @to_do.update_attributes(to_do_params)
      redirect_to to_do_path(@to_do)
    end 
  end

  # DELETE /to_dos/1
  # DELETE /to_dos/1.json
  def destroy
    @to_do = ToDo.find(params[:id])
    if @to_do.destroy
      redirect_to to_dos_path
    else
      redirect_to to_do_path(@to_do)
    end
  end

  def filter
    @to_dos = ToDo.search(params[:filter])
    render to_dos_path
  end

  def search
    @to_dos = ToDo.search(params[:search])
  end

  def upload_file
    @to_do = ToDo.find(params[:id])
    upload_file = @to_do.file
    send_file upload_file.path
  end

  def download_file
    @to_do = ToDo.find(params[:id])
    file = @to_do.file
    send_file file.path
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def to_do_params
    params.require(:to_do).permit!
  end

end
