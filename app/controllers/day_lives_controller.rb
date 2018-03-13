class DayLivesController < ApplicationController
  before_action :set_day_life, only: [:show, :edit, :update, :destroy]

  # GET /day_lives
  # GET /day_lives.json
  def index
    @day_lives = DayLife.all
  end

  # GET /day_lives/1
  # GET /day_lives/1.json
  def show
  end

  # GET /day_lives/new
  def new
    @day_life = DayLife.new
  end

  # GET /day_lives/1/edit
  def edit
  end

  # POST /day_lives
  # POST /day_lives.json
  def create
    @day_life = DayLife.new(day_life_params)

    respond_to do |format|
      if @day_life.save
        format.html { redirect_to @day_life, notice: 'Day life was successfully created.' }
        format.json { render :show, status: :created, location: @day_life }
      else
        format.html { render :new }
        format.json { render json: @day_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /day_lives/1
  # PATCH/PUT /day_lives/1.json
  def update
    respond_to do |format|
      if @day_life.update(day_life_params)
        format.html { redirect_to @day_life, notice: 'Day life was successfully updated.' }
        format.json { render :show, status: :ok, location: @day_life }
      else
        format.html { render :edit }
        format.json { render json: @day_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_lives/1
  # DELETE /day_lives/1.json
  def destroy
    @day_life.destroy
    respond_to do |format|
      format.html { redirect_to day_lives_url, notice: 'Day life was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_life
      @day_life = DayLife.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_life_params
      params.require(:day_life).permit(:goal, :diary, :day, :status)
    end
end
