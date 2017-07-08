class StreamersController < ApplicationController
  before_action :set_streamer, only: [:show, :edit, :update, :destroy]

  # GET /streamers
  # GET /streamers.json
  def index
    @streamers = Streamer.all
  end

  # GET /streamers/1
  # GET /streamers/1.json
  def show
  end

  # GET /streamers/new
  def new
    @streamer = Streamer.new
  end

  # GET /streamers/1/edit
  def edit
  end

  # POST /streamers
  # POST /streamers.json
  def create
    @streamer = Streamer.new(streamer_params)

    respond_to do |format|
      if @streamer.save
        format.html { redirect_to @streamer, notice: 'Streamer was successfully created.' }
        format.json { render :show, status: :created, location: @streamer }
      else
        format.html { render :new }
        format.json { render json: @streamer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /streamers/1
  # PATCH/PUT /streamers/1.json
  def update
    respond_to do |format|
      if @streamer.update(streamer_params)
        format.html { redirect_to @streamer, notice: 'Streamer was successfully updated.' }
        format.json { render :show, status: :ok, location: @streamer }
      else
        format.html { render :edit }
        format.json { render json: @streamer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /streamers/1
  # DELETE /streamers/1.json
  def destroy
    @streamer.destroy
    respond_to do |format|
      format.html { redirect_to streamers_url, notice: 'Streamer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_streamer
      @streamer = Streamer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def streamer_params
      params.require(:streamer).permit(:name, :token, :code, :game_status)
    end
end
