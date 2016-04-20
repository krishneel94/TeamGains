class GainsPagesController < ApplicationController
  before_action :set_gains_page, only: [:show, :edit, :update, :destroy]

  # GET /gains_pages
  # GET /gains_pages.json
  def index
    @gains_pages = GainsPage.all
  end

  # GET /gains_pages/1
  # GET /gains_pages/1.json
  def show
  end

  # GET /gains_pages/new
  def new
    @gains_page = GainsPage.new
  end

  # GET /gains_pages/1/edit
  def edit
  end

  # POST /gains_pages
  # POST /gains_pages.json
  def create
    @gains_page = GainsPage.new(gains_page_params)

    respond_to do |format|
      if @gains_page.save
        format.html { redirect_to @gains_page, notice: 'Gains page was successfully created.' }
        format.json { render :show, status: :created, location: @gains_page }
      else
        format.html { render :new }
        format.json { render json: @gains_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gains_pages/1
  # PATCH/PUT /gains_pages/1.json
  def update
    respond_to do |format|
      if @gains_page.update(gains_page_params)
        format.html { redirect_to @gains_page, notice: 'Gains page was successfully updated.' }
        format.json { render :show, status: :ok, location: @gains_page }
      else
        format.html { render :edit }
        format.json { render json: @gains_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gains_pages/1
  # DELETE /gains_pages/1.json
  def destroy
    @gains_page.destroy
    respond_to do |format|
      format.html { redirect_to gains_pages_url, notice: 'Gains page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gains_page
      @gains_page = GainsPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gains_page_params
      params.require(:gains_page).permit(:title, :body)
    end
end
