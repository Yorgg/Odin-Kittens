class KittensController < ApplicationController
  before_action :set_kitten, only: [:show, :edit, :update, :destroy]

  # GET /kittens
  # GET /kittens.json
  def index
    @kittens = Kitten.all
  end

  # GET /kittens/1
  # GET /kittens/1.json
  def show
  end

  # GET /kittens/new
  def new
    @kitten = Kitten.new
  end

  # GET /kittens/1/edit
  def edit
  end

  # POST /kittens
  # POST /kittens.json
  def create
    @kitten = Kitten.new(kitten_params)

     
  end

  # PATCH/PUT /kittens/1
  # PATCH/PUT /kittens/1.json
  def update
    
      if @kitten.update(kitten_params)
        format.html { redirect_to @kitten, notice: 'Kitten was successfully updated.' }
        
      else
        format.html { render :edit }
       end
  end
 
  # DELETE /kittens/1
  # DELETE /kittens/1.json
  def destroy
    @kitten.destroy
    respond_to do |format|
      format.html { redirect_to kittens_url, notice: 'Kitten was successfully destroyed.' }
     end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitten
      @kitten = Kitten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kitten_params
      params.require(:kitten).permit(:name, :cuteness, :age, :softness)
    end
end
