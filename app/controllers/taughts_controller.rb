class TaughtsController < ApplicationController
  # GET /taughts
  # GET /taughts.json
  def index
    @taughts = Taught.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taughts }
    end
  end

  # GET /taughts/1
  # GET /taughts/1.json
  def show
    @taught = Taught.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @taught }
    end
  end

  # GET /taughts/new
  # GET /taughts/new.json
  def new
    @taught = Taught.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taught }
    end
  end

  # GET /taughts/1/edit
  def edit
    @taught = Taught.find(params[:id])
  end

  # POST /taughts
  # POST /taughts.json
  def create
    @taught = Taught.new(params[:taught])

    respond_to do |format|
      if @taught.save
        format.html { redirect_to @taught, notice: 'Taught was successfully created.' }
        format.json { render json: @taught, status: :created, location: @taught }
      else
        format.html { render action: "new" }
        format.json { render json: @taught.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /taughts/1
  # PUT /taughts/1.json
  def update
    @taught = Taught.find(params[:id])

    respond_to do |format|
      if @taught.update_attributes(params[:taught])
        format.html { redirect_to @taught, notice: 'Taught was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @taught.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taughts/1
  # DELETE /taughts/1.json
  def destroy
    @taught = Taught.find(params[:id])
    @taught.destroy

    respond_to do |format|
      format.html { redirect_to taughts_url }
      format.json { head :no_content }
    end
  end
end
