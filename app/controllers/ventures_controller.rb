class VenturesController < ApplicationController
  # GET /ventures
  # GET /ventures.json
  def index
    @ventures = Venture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ventures }
    end
  end

  # GET /ventures/1
  # GET /ventures/1.json
  def show
    @venture = Venture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @venture }
    end
  end

  # GET /ventures/new
  # GET /ventures/new.json
  def new
    @venture = Venture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @venture }
    end
  end

  # GET /ventures/1/edit
  def edit
    @venture = Venture.find(params[:id])
  end

  # POST /ventures
  # POST /ventures.json
  def create
    binding.pry
    # programme_hash = JSON.parse(params[:venture][:programme_id])
    id = params[:venture][:programme_id]
    
    programme = Programme.find(id)

    venture_params = (params[:venture])
    venture_params.delete("programme")

    @venture = Venture.new(venture_params)
    respond_to do |format|
      if @venture.save
        @venture.programmes.push(programme)
        format.html { redirect_to @venture, notice: 'Venture was successfully created.' }
        format.json { render json: @venture, status: :created, location: @venture }
      else
        format.html { render action: "new" }
        format.json { render json: @venture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ventures/1
  # PUT /ventures/1.json
  def update
    @venture = Venture.find(params[:id])

    respond_to do |format|
      if @venture.update_attributes(params[:venture])
        format.html { redirect_to @venture, notice: 'Venture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @venture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ventures/1
  # DELETE /ventures/1.json
  def destroy
    @venture = Venture.find(params[:id])
    @venture.destroy

    respond_to do |format|
      format.html { redirect_to ventures_url }
      format.json { head :no_content }
    end
  end
end
