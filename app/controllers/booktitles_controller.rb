class BooktitlesController < ApplicationController
  before_action :set_booktitle, only: %i[ show edit update destroy ]

  # GET /booktitles or /booktitles.json
  def index
    FirstJob.perform_later()
    @booktitles = Booktitle.all
  end

  # GET /booktitles/1 or /booktitles/1.json
  def show
  end

  # GET /booktitles/new
  def new
    @booktitle = Booktitle.new
  end

  # GET /booktitles/1/edit
  def edit
  end

  # POST /booktitles or /booktitles.json
  def create
    @booktitle = Booktitle.new(booktitle_params)

    respond_to do |format|
      if @booktitle.save
        format.html { redirect_to booktitle_url(@booktitle), notice: "Booktitle was successfully created." }
        format.json { render :show, status: :created, location: @booktitle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booktitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booktitles/1 or /booktitles/1.json
  def update
    UpdateJob.perform_later()
    respond_to do |format|
      if @booktitle.update(booktitle_params)
        format.html { redirect_to booktitle_url(@booktitle), notice: "Booktitle was successfully updated." }
        format.json { render :show, status: :ok, location: @booktitle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booktitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booktitles/1 or /booktitles/1.json
  def destroy
    @booktitle.destroy

    respond_to do |format|
      format.html { redirect_to booktitles_url, notice: "Booktitle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booktitle
      @booktitle = Booktitle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booktitle_params
      params.require(:booktitle).permit(:content)
    end
end
