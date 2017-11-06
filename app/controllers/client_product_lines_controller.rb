class ClientProductLinesController < ApplicationController
  before_action :set_client_product_line, only: [:show, :edit, :update, :destroy]

  # GET /client_product_lines
  # GET /client_product_lines.json
  def index
    @client_product_lines = ClientProductLine.all
  end

  # GET /client_product_lines/1
  # GET /client_product_lines/1.json
  def show
  end

  # GET /client_product_lines/new
  def new
    @client_product_line = ClientProductLine.new
  end

  # GET /client_product_lines/1/edit
  def edit
  end

  # POST /client_product_lines
  # POST /client_product_lines.json
  def create
    @client_product_line = ClientProductLine.new(client_product_line_params)

    respond_to do |format|
      if @client_product_line.save
        format.html { redirect_to @client_product_line, notice: 'Client product line was successfully created.' }
        format.json { render :show, status: :created, location: @client_product_line }
      else
        format.html { render :new }
        format.json { render json: @client_product_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_product_lines/1
  # PATCH/PUT /client_product_lines/1.json
  def update
    respond_to do |format|
      if @client_product_line.update(client_product_line_params)
        format.html { redirect_to @client_product_line, notice: 'Client product line was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_product_line }
      else
        format.html { render :edit }
        format.json { render json: @client_product_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_product_lines/1
  # DELETE /client_product_lines/1.json
  def destroy
    @client_product_line.destroy
    respond_to do |format|
      format.html { redirect_to client_product_lines_url, notice: 'Client product line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_product_line
      @client_product_line = ClientProductLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_product_line_params
      params.require(:client_product_line).permit(:client_id, :product_line_id)
    end
end
