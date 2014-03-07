class MircrpostsController < ApplicationController
  before_action :set_mircrpost, only: [:show, :edit, :update, :destroy]

  # GET /mircrposts
  # GET /mircrposts.json
  def index
    @mircrposts = Mircrpost.all
  end

  # GET /mircrposts/1
  # GET /mircrposts/1.json
  def show
  end

  # GET /mircrposts/new
  def new
    @mircrpost = Mircrpost.new
  end

  # GET /mircrposts/1/edit
  def edit
  end

  # POST /mircrposts
  # POST /mircrposts.json
  def create
    @mircrpost = Mircrpost.new(mircrpost_params)

    respond_to do |format|
      if @mircrpost.save
        format.html { redirect_to @mircrpost, notice: 'Mircrpost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mircrpost }
      else
        format.html { render action: 'new' }
        format.json { render json: @mircrpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mircrposts/1
  # PATCH/PUT /mircrposts/1.json
  def update
    respond_to do |format|
      if @mircrpost.update(mircrpost_params)
        format.html { redirect_to @mircrpost, notice: 'Mircrpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mircrpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mircrposts/1
  # DELETE /mircrposts/1.json
  def destroy
    @mircrpost.destroy
    respond_to do |format|
      format.html { redirect_to mircrposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mircrpost
      @mircrpost = Mircrpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mircrpost_params
      params.require(:mircrpost).permit(:content, :user_id)
    end
end
