class Cat02sController < ApplicationController
  before_action :set_cat02, only: [:show, :edit, :update, :destroy]

  # GET /cat02s
  # GET /cat02s.json
  def index
    @cat02s = Cat02.all
  end

  # GET /cat02s/1
  # GET /cat02s/1.json
  def show
  end

  # GET /cat02s/new
  def new
    @cat02 = Cat02.new
  end

  # GET /cat02s/1/edit
  def edit
  end

  # POST /cat02s
  # POST /cat02s.json
  def create
    @cat02 = Cat02.new(cat02_params)
    @cat02.id = @cat02.Codigo
#    raise params.to_yaml
    respond_to do |format|
      if @cat02.save
        format.html { redirect_to @cat02, notice: 'Cat02 was successfully created.' }
        format.json { render :show, status: :created, location: @cat02 }
      else
        format.html { render :new }
        format.json { render json: @cat02.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat02s/1
  # PATCH/PUT /cat02s/1.json
  def update
    respond_to do |format|
      if @cat02.update(cat02_params)
        format.html { redirect_to @cat02, notice: 'Cat02 was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat02 }
      else
        format.html { render :edit }
        format.json { render json: @cat02.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat02s/1
  # DELETE /cat02s/1.json
  def destroy
    @cat02.destroy
    respond_to do |format|
      format.html { redirect_to cat02s_url, notice: 'Cat02 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat02
      @cat02 = Cat02.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat02_params
      params.require(:cat02).permit(:id, :Codigo, :Descripcion)
    end
end
