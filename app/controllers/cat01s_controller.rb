class Cat01sController < ApplicationController
  before_action :set_cat01, only: [:show, :edit, :update, :destroy]

  # GET /cat01s
  # GET /cat01s.json
  def index
    @cat01s = Cat01.all
  end

  # GET /cat01s/1
  # GET /cat01s/1.json
  def show
  end

  # GET /cat01s/new
  def new
    @cat01 = Cat01.new
  end

  # GET /cat01s/1/edit
  def edit
  end

  # POST /cat01s
  # POST /cat01s.json
  def create
    @cat01 = Cat01.new(cat01_params)

    respond_to do |format|
      if @cat01.save
        format.html { redirect_to @cat01, notice: 'Cat01 was successfully created.' }
        format.json { render :show, status: :created, location: @cat01 }
      else
        format.html { render :new }
        format.json { render json: @cat01.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat01s/1
  # PATCH/PUT /cat01s/1.json
  def update
    respond_to do |format|
      if @cat01.update(cat01_params)
        format.html { redirect_to @cat01, notice: 'Cat01 was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat01 }
      else
        format.html { render :edit }
        format.json { render json: @cat01.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat01s/1
  # DELETE /cat01s/1.json
  def destroy
    @cat01.destroy
    respond_to do |format|
      format.html { redirect_to cat01s_url, notice: 'Cat01 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat01
      @cat01 = Cat01.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat01_params
      params.require(:cat01).permit(:Codigo, :Descripcion)
    end
end
