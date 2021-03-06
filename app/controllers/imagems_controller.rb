class ImagemsController < ApplicationController
  before_action :set_imagem, only: [:show, :edit, :update, :destroy]

  # GET /imagems
  # GET /imagems.json
  def index
    @imagems = Imagem.all
  end

  # GET /imagems/1
  # GET /imagems/1.json
  def show
  end

  # GET /imagems/new
  def new
    @imagem = Imagem.new
  end

  # GET /imagems/1/edit
  def edit
  end

  # POST /imagems
  # POST /imagems.json
  def create
    @imagem = Imagem.new(imagem_params)

    respond_to do |format|
      if @imagem.save
        format.html { redirect_to @imagem, notice: 'Imagem was successfully created.' }
        format.json { render :show, status: :created, location: @imagem }
      else
        format.html { render :new }
        format.json { render json: @imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagems/1
  # PATCH/PUT /imagems/1.json
  def update
    respond_to do |format|
      if @imagem.update(imagem_params)
        format.html { redirect_to @imagem, notice: 'Imagem was successfully updated.' }
        format.json { render :show, status: :ok, location: @imagem }
      else
        format.html { render :edit }
        format.json { render json: @imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagems/1
  # DELETE /imagems/1.json
  def destroy
    @imagem.destroy
    respond_to do |format|
      format.html { redirect_to imagems_url, notice: 'Imagem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagem
      @imagem = Imagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagem_params
      params.require(:imagem).permit(:veiculo_id)
    end
end
