class ProgrammesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  # GET /programmes
  # GET /programmes.json
  def index
    @venture = Venture.new
    @programmes = Programme.all

    # finding lat and lng of locations
    #Can drop once new data is inputted online and lat and lng saved when individual programmes created
    # @programmes.each do |programme|
    #   city = programme.city.gsub(/ /, '+')
    #   country = programme.country.gsub(/ /, '+') 
    #   continent = programme.continent.gsub(/ /, '+') 
    #   prog_coords = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{city}+#{country}+#{continent}&key=AIzaSyAJ5DQQKqw8alS7ytLsWZfm0fZEFUptN20")
    #   programme.lat = prog_coords["results"][0]["geometry"]["location"]["lat"]
    #   programme.long = prog_coords["results"][0]["geometry"]["location"]["lng"]
    #   programme.save
    # end

    gon.programmes = @programmes


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @programmes.to_json(include: [:ventures]) }
    end
  end

  # GET /programmes/1
  # GET /programmes/1.json
  def show
    @programme = Programme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @programme }
    end
  end

  # GET /programmes/new
  # GET /programmes/new.json
  def new
    @programme = Programme.new
    gon.programmes = Programme.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @programme }
    end
  end

  # GET /programmes/1/edit
  def edit
    gon.programmes = Programme.all

    @programme = Programme.find(params[:id])
  end

  # POST /programmes
  # POST /programmes.json
  def create
    @programme = Programme.new(params[:programme])
    @programme.users.push(current_user)

    city = @programme.city.gsub(/ /, '+')
    country = @programme.country.gsub(/ /, '+') 
    continent = @programme.continent.gsub(/ /, '+') 

    prog_coords = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{city}+#{country}+#{continent}&key=AIzaSyBz8y-Bd8XIaaIPyEyhTV1LmcCTfxVhgnA")
    @programme.lat = prog_coords["results"][0]["geometry"]["location"]["lat"]
    @programme.long = prog_coords["results"][0]["geometry"]["location"]["lng"]
    respond_to do |format|
      if @programme.save
        format.html { redirect_to @programme, notice: 'Programme was successfully created.' }
        format.json { render json: @programme, status: :created, location: @programme }
      else
        format.html { render action: "new" }
        format.json { render json: @programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /programmes/1
  # PUT /programmes/1.json
  def update
    gon.programmes = Programme.all
    @programme = Programme.find(params[:id])
    city = @programme.city.gsub(/ /, '+')
    country = @programme.country.gsub(/ /, '+') 
    continent = @programme.continent.gsub(/ /, '+') 
    prog_coords = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{city}+#{country}+#{continent}&key=AIzaSyDSJmvMFOXZEZxJ8X6aP7SFyuVWH_RNI0Y")
    @programme.lat = prog_coords["results"][0]["geometry"]["location"]["lat"]
    @programme.long = prog_coords["results"][0]["geometry"]["location"]["lng"]

    respond_to do |format|
      if @programme.update_attributes(params[:programme])
        # format.html { redirect_to @programme, notice: 'Programme was successfully updated.' }
        format.html { redirect_to member_path(current_user.id), notice: 'Programme was successfully updated.' }

        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programmes/1
  # DELETE /programmes/1.json
  def destroy
    @programme = Programme.find(params[:id])
    @programme.destroy

    respond_to do |format|
      format.html { redirect_to programmes_url }
      format.json { head :no_content }
    end
  end
end
