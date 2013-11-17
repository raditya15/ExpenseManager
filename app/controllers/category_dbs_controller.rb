class CategoryDbsController < ApplicationController
  before_action :set_category_db, only: [:show, :edit, :update, :destroy]

  # GET /category_dbs
  # GET /category_dbs.json
  def index
    @category_dbs = CategoryDb.all
  end

  # GET /category_dbs/1
  # GET /category_dbs/1.json
  def show
  end

  # GET /category_dbs/new
  def new
    @category_db = CategoryDb.new
  end

  # GET /category_dbs/1/edit
  def edit
  end

  # POST /category_dbs
  # POST /category_dbs.json
  def create
    @category_db = CategoryDb.new(category_db_params)

    respond_to do |format|
      if @category_db.save
        format.html { redirect_to @category_db, notice: 'Category db was successfully created.' }
        format.json { render action: 'show', status: :created, location: @category_db }
      else
        format.html { render action: 'new' }
        format.json { render json: @category_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_dbs/1
  # PATCH/PUT /category_dbs/1.json
  def update
    respond_to do |format|
      if @category_db.update(category_db_params)
        format.html { redirect_to @category_db, notice: 'Category db was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @category_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_dbs/1
  # DELETE /category_dbs/1.json
  def destroy
    @category_db.destroy
    respond_to do |format|
      format.html { redirect_to category_dbs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_db
      @category_db = CategoryDb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_db_params
      params.require(:category_db).permit(:cid, :catname, :description)
    end
end
